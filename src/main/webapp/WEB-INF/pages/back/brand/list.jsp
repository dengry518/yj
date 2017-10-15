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
    <script src="/res/layer/layer.js"></script>

</head>
<body>
<div id="div-search" style="display: none">
    <div class="panel panel-default">
        <div class="panel-body">
            <form class="form-group">
                <label for="name" class="col-sm-1 control-label text-right">品牌名称</label>
                <div class="col-sm-3">
                    <input type="text" class="input-sm form-control" id="name"/>
                </div>

                <label for="isDisplay" class="col-sm-1 control-label text-right">是否可用</label>
                <div class="col-sm-3">
                    <select id="isDisplay" class="input-sm form-control">
                        <option value="">请选择</option>
                        <option value="1">是</option>
                        <option value="0">不是</option>
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
    <button type="button" class="btn btn-primary btn-sm" id="edit">
        <i class="ace-icon fa fa-pencil-square-o"></i> 修改
    </button>
    <button id="toggle-search" class="btn btn-success btn-sm" title="查询" type="button">
        <i class="fa fa-angle-double-down" aria-hidden="true" style="font-size:18px;"></i>
    </button>
</div>
<table id="table" data-page-list="[10,15,20]" data-toolbar="#toolbar">
</table>
<script>
    var $table = $('#table');
    var $remove = $('#remove');
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
            url: '/back/brand/list',
            columns: [{
                field: 'state',
                checkbox: true
            }, {
                field: 'id',
                align: 'center',
                title: 'ID',
                class: 'colomnStyle'
            }, {
                field: 'name',
                align: 'center',
                title: '品牌名称',
                class: 'colomnStyle'
            }, {
                field: 'description',
                align: 'center',
                title: '描述',
                class: 'colomnStyle'
            }, {
                field: 'sort',
                align: 'center',
                title: '排序',
                class: 'colomnStyle'
            }, {
                field: 'isDisplay',
                align: 'center',
                title: '是否可用',
                class: 'colomnStyle',
                formatter: formatIsDisplay
            }],
            height: 500,
            pagination: true,
            pageSize: 10,
            dataType: "json",
            search: false,
            queryParams: queryParams,
            striped: true,
            sidePagination: "server"
        })
    }

    function queryParams(params) {
        var temp = {
            limit: params.limit,
            offset: params.offset,
            name: $("#name").val(),
            isDisplay: $("#isDisplay").val()
        }
        return temp;
    }

    function formatIsDisplay(value) {
        if (value == 0) {
            return '<span style="color:red">不可用</span>';
        } else {
            return '可用';
        }
    }

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
    //批量删除
    $remove.click(function () {
        var index = parent.layer.confirm('确定删除?', {icon: 2}, function () {
            var url = "/back/brand/del";
//            jQuery.ajaxSettings.traditional = true;
//            $.post(url, {ids: selections}, function () {
//            });
            $.ajax({
                type: "POST",
                url: url,
                traditional: true,
                data: {ids: selections},
                dataType: "json",
                success: function (data) {
                    parent.layer.close(index);//通过index关闭confirm窗口
                    if (data.success) {
                        $table.bootstrapTable('refresh');//刷新table
                        parent.layer.msg('删除成功', {icon: 1});
                        $remove.prop('disabled', true);
                    } else {
                        parent.layer.alert("记录正被使用!")
                    }
                }
            })
        });
    });

    //跳转到新增页面
    $('#add').click(function () {
        window.location.href = "/back/brand/toAdd";
    })

    //跳转到修改页面
    $("#edit").click(function () {
        if (selections.length == 0 || selections.length > 1) {
            parent.layer.alert("请先选择一条记录!", {icon: 2})
        } else {
            window.location.href = "/back/brand/updatePre/" + selections;
        }
    });
</script>
</body>
</html>
