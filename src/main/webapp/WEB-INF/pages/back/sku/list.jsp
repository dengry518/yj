<%--
  Created by IntelliJ IDEA.
  User: dengry
  Date: 2017/9/24
  Time: 19:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/res/ace/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/res/ace/assets/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="/res/bootstrapTable/bootstrap-table.css">
    <link rel="stylesheet" href="/res/bootstrapValidator/dist/css/bootstrapValidator.min.css"/>
    <link rel="stylesheet" href="/res/css/common.css">
    <!--[if !IE]> -->
    <script src="/res/ace/assets/js/jquery-2.1.4.min.js"></script>
    <!-- <![endif]-->

    <!--[if IE]>
    <script src="/res/ace/assets/js/jquery-1.11.3.min.js"></script>
    <![endif]-->
    <script src="/res/ace/assets/js/bootstrap.min.js"></script>
    <script src="/res/bootstrapTable/bootstrap-table.js"></script>
    <script src="/res/bootstrapTable/locale/bootstrap-table-zh-CN.js"></script>
    <script src="/res/bootstrapValidator/dist/js/bootstrapValidator.min.js"></script>
    <script src="/res/layer/layer.js"></script>

</head>
<body>

<div id="toolbar" class="btn-group">
    <button type="button" class="btn btn-primary btn-sm" id="edit">
        <i class="ace-icon fa fa-pencil-square-o"></i> 修改
    </button>
</div>
<table id="table" data-page-list="[10,15,20]" data-toolbar="#toolbar">
</table>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    编辑sku
                </h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" role="form" id="myform" action="/back/sku/update">
                    <div class="form-group">
                        <label for="no" class="col-sm-2 control-label">商品编号</label>
                        <div class="col-sm-10">
                            <input type="hidden" name="id" value="" id="id">
                            <input type="text" class="form-control" name="no" id="no" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="marketPrice" class="col-sm-2 control-label">市场价格</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="marketPrice" id="marketPrice">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="skuPrice" class="col-sm-2 control-label">销售价格</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="skuPrice" id="skuPrice">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="stockInventory" class="col-sm-2 control-label">库存</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="stockInventory"
                                   id="stockInventory">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="skuUpperLimit" class="col-sm-2 control-label">购买限制</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="skuUpperLimit"
                                   id="skuUpperLimit">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">关闭
                </button>
                <button type="submit" class="btn btn-primary" id="submit">提交
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


<script>
    var $table = $('#table');

    //存储选中行的id
    var selections = [];
    $table.on('check.bs.table uncheck.bs.table ' +
        'check-all.bs.table uncheck-all.bs.table', function () {
        selections = getIdSelections();
        // push or splice the selections if you want to save all data selections
    });

    function getIdSelections() {
        return $.map($table.bootstrapTable('getSelections'), function (row) {
            return row.id
        });
    }

    function initTable() {
        $table.bootstrapTable({
            url: '/back/sku/list',
            columns: [{
                field: 'state',
                checkbox: true
            }, {
                field: 'product.no',
                align: 'center',
                title: '商品编号',
                class: 'colomnStyle'
            }, {
                field: 'color.name',
                align: 'center',
                title: '商品颜色',
                class: 'colomnStyle'
            }, {
                field: 'size',
                align: 'center',
                title: '商品尺码',
                class: 'colomnStyle'
            }, {
                field: 'skuType',
                align: 'center',
                title: '是否赠品',
                class: 'colomnStyle'
            }, {
                field: 'marketPrice',
                align: 'center',
                title: '市场价格',
                class: 'colomnStyle'
            }, {
                field: 'skuPrice',
                align: 'center',
                title: '销售价格',
                class: 'colomnStyle'
            }, {
                field: 'stockInventory',
                align: 'center',
                title: '库存',
                class: 'colomnStyle'
            }, {
                field: 'skuUpperLimit',
                align: 'center',
                title: '购买限制',
                class: 'colomnStyle'
            }],
            height: 500,
            pagination: true,
            pageSize: 10,
            dataType: "json",
            search: false,
            queryParams: queryParams,
            striped: true,
            singleSelect: true,//只能单选
            sidePagination: "server"
        })
    }

    function queryParams(params) {
        var temp = {
            limit: params.limit,
            offset: params.offset,
            productId: '${productId}'
        }
        return temp;
    }

    $('#edit').click(function () {
        var ids = getIdSelections();
        if (ids.length == 0) {
            layer.msg('请先选择一条记录', {icon: 2});
        } else {
            var rows = $table.bootstrapTable('getSelections');//取得选中的所有行
            var sku = rows[0];//取得选中的行
            //向表单设值值
            $('#no').val(sku.product.no);
            $('#marketPrice').val(sku.marketPrice);
            $('#skuPrice').val(sku.skuPrice);
            $('#stockInventory').val(sku.stockInventory);
            $('#skuUpperLimit').val(sku.skuUpperLimit);
            $('#id').val(sku.id);//做修改
            $('#myModal').modal('show');
        }
    });

    $(function () {
        initTable();


        //扩展函数 serializeObject：序列化表单成json对象,目的是为了向后台发送ajax数据做修改
        $.fn.serializeObject = function () {
            var o = {};
            var a = this.serializeArray();
            $.each(a, function () {
                if (o[this.name]) {
                    if (!o[this.name].push) {
                        o[this.name] = [o[this.name]];
                    }
                    o[this.name].push(this.value || '');
                } else {
                    o[this.name] = this.value || '';
                }
            });
            return o;
        };

        //bootstrapValidator校验
        $('#myform').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                skuPrice: {
                    validators: {
                        digits: {
                            message: '销售价格只能是数字'
                        },
                        notEmpty: {
                            message: '销售价格不能为空'
                        }
                    }

                }
            }
        }).on('success.form.bv', function (e) {
            // 阻止默认事件提交
            e.preventDefault();
            // Get the form instance
            var $form = $(e.target);

            // Get the BootstrapValidator instance
            var bv = $form.data('bootstrapValidator');

            $.post($form.attr('action'), $form.serializeObject(), function (data) {
                if (data.success) {
                    layer.msg('编辑成功', {icon: 1});
                    $('#myModal').modal('hide');//关闭模态窗口
                    $table.bootstrapTable('refresh');//刷新table重新取修改后的数据
                } else {
                    layer.msg('编辑失败', {icon: 2});
                }
            });
        });

    })


    //检验提交
    $('#submit').click(function () {
        $('#myform').bootstrapValidator('validate');
    });

</script>
</body>
</html>
