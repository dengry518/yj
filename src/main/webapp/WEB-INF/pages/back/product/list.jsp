<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

</head>
<body>
<div id="div-search" style="display: none">
    <div class="panel panel-default">
        <div class="panel-body">
            <form class="form-group">
                <label for="name" class="col-sm-1 control-label text-right">商品名称</label>
                <div class="col-sm-2">
                    <input type="text" class="input-sm form-control" id="name"/>
                </div>

                <label for="brandId" class="col-sm-1 control-label text-right">品牌</label>
                <div class="col-sm-2">
                    <select id="brandId" class="input-sm form-control">
                        <option value="">请选择</option>
                        <c:forEach items="${brands}" var="brand">
                            <option value="${brand.id}">${brand.name}</option>
                        </c:forEach>
                    </select>
                </div>

                <label for="isShow" class="col-sm-1 control-label text-right">上下架</label>
                <div class="col-sm-1">
                    <select id="isShow" class="input-sm form-control">
                        <option value="">请选择</option>
                        <option value="1">上架</option>
                        <option value="0">下架</option>
                    </select>
                </div>

                <div class="col-sm-4">
                    <div class="btn-group">
                        <button class="btn btn-success btn-sm" type="button" id="search">
                            <span class="ace-icon fa fa-search icon-on-right "></span>
                            查询
                        </button>
                        <button class="btn btn-danger btn-sm" type="reset">
                            <span class="ace-icon fa fa-trash-o  orange"></span>
                            清空
                        </button>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>
<div id="toolbar" class="btn-group">
    <button type="button" class="btn btn-primary btn-sm" id="add">
        <i class="glyphicon glyphicon-plus"></i> 新增
    </button>
    <button id="remove" class="btn btn-danger btn-sm" disabled>
        <i class="glyphicon glyphicon-remove"></i> 删除
    </button>
    <button type="button" class="btn btn-primary btn-sm" id="add">
        <i class="glyphicon glyphicon-plus"></i> 上架
    </button>
    <button type="button" class="btn btn-primary btn-sm" id="add">
        <i class="glyphicon glyphicon-plus"></i> 下架
    </button>
    <button type="button" class="btn btn-primary btn-sm" id="sku">
        <i class="glyphicon glyphicon-plus"></i> SKU管理
    </button>
    <button type="button" class="btn btn-primary btn-sm" id="pic">
        <i class="glyphicon glyphicon-plus"></i> 商品图片
    </button>
    <button type="button" class="btn btn-primary btn-sm" id="picOrder">
        <i class="glyphicon glyphicon-plus"></i> 图片排序
    </button>
    <button id="toggle-search" class="btn btn-success btn-sm" title="查询" type="button">
        <i class="fa fa-angle-double-down" aria-hidden="true" style="font-size:18px;"></i>
    </button>
</div>
<table id="table" data-page-list="[10,15,20]" data-toolbar="#toolbar">
</table>
<script>
    var $table = $('#table');
    //存储选中行的id
    var selections = [];
    $table.on('check.bs.table uncheck.bs.table ' +
        'check-all.bs.table uncheck-all.bs.table', function () {
        selections = getIdSelections();
        // push or splice the selections if you want to save all data selections
        $remove.prop('disabled', !selections.length);
        // save your data, here just save the current page

    });

    function getIdSelections() {
        return $.map($table.bootstrapTable('getSelections'), function (row) {
            return row.id
        });
    }

    function initTable() {
        $table.bootstrapTable({
            url: '/back/product/list',
            columns: [{
                field: 'state',
                checkbox: true
            }, {
                field: 'no',
                align: 'center',
                title: '商品编号',
                class: 'colomnStyle'
            }, {
                field: 'name',
                align: 'center',
                title: '商品名称',
                class: 'colomnStyle'
            }, {
                field: 'price',
                align: 'center',
                title: '商品价格',
                class: 'colomnStyle'
            }, {
                field: 'isNew',
                align: 'center',
                title: '是否新品',
                formatter: formatData,
                class: 'colomnStyle'
            }, {
                field: 'isHot',
                align: 'center',
                title: '是否热卖',
                formatter: formatData,
                class: 'colomnStyle'
            }, {
                field: 'isCommend',
                align: 'center',
                title: '是否推荐',
                formatter: formatData,
                class: 'colomnStyle'
            }, {
                field: 'brand.name',
                align: 'center',
                title: '品牌名称',
                class: 'colomnStyle'
            }, {
                field: 'type.name',
                align: 'center',
                title: '类型名称',
                class: 'colomnStyle'
            }, {
                field: 'isShow',
                align: 'center',
                title: '上下架',
                formatter: formatIsShow,
                class: 'colomnStyle'
            }, {
                field: 'isDel',
                align: 'center',
                title: '是否上传多张?',
                formatter: formatIsDel,
                class: 'colomnStyle'
            }],
            height: 500,
            pagination: true,
            pageSize: 10,
            dataType: "json",
            search: false,
            queryParams: queryParams,
            striped: true,
            sidePagination: "server",
            rowStyle: function (row, index) {
                return {
                    css: {"font-size": "13px"}
                };
            }
        })
    }

    function queryParams(params) {
        var temp = {
            limit: params.limit,
            offset: params.offset,
            name: $("#name").val(),
            brandId: $("#brandId").val(),
            isShow: $("#isShow").val()
        }
        return temp;
    }

    function formatData(value) {
        if (value == 0) {
            return '否';
        } else {
            return '是';
        }
    }

    function formatIsShow(value) {
        if (value == 0) {
            return '下架';
        } else {
            return '上架';
        }
    }

    function formatIsDel(value) {
        if (value == 0) {
            return '<span style="color:red">未上传</span>';
            ;
        } else {
            return '已上传';
        }
    }

    $('#btn').click(function () {
        $table.bootstrapTable('refresh');
    });

    $(function () {
        initTable();
    })

    //查询
    $('#search').click(function () {
        $table.bootstrapTable('selectPage', 1);
    })
    //查询表单的显示和隐藏
    $('#toggle-search').click(function () {
        $(this).find('i').toggleClass("fa-angle-double-down fa-angle-double-up");
        $("#div-search").slideToggle("fast");
    })
    $('#add').click(function () {
        window.location.href = "/back/product/toAdd";
    })
    //跳转到商品图片上传(上传多张图片)
    $('#pic').click(function () {
        if (selections.length == 0 || selections.length > 1) {
            parent.layer.alert("请先选择一条记录!", {icon: 2})
        } else {
            window.location.href = "/back/product/uploadPics/" + selections;
        }
    });
    //图片排序
    $('#picOrder').click(function () {
        if (selections.length == 0 || selections.length > 1) {
            parent.layer.alert("请先选择一条记录!", {icon: 2})
        } else {
            window.location.href = "/back/img/order/" + selections;
        }
    });
    //sku管理
    $('#sku').click(function () {
        if (selections.length == 0 || selections.length > 1) {
            parent.layer.alert("请先选择一条记录!", {icon: 2})
        } else {
            window.location.href = "/back/sku/toList/" + selections;
        }
    });
</script>
</body>
</html>
