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
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>Form Elements - Ace Admin</title>

    <meta name="description" content="Common form elements and layouts"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="/res/ace/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/res/ace/assets/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="/res/bootstrapValidator/dist/css/bootstrapValidator.min.css"/>
    <!-- text fonts -->
    <link rel="stylesheet" href="/res/ace/assets/css/fonts.googleapis.com.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="/res/ace/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/res/ace/assets/css/ace-part2.min.css" class="ace-main-stylesheet"/>
    <![endif]-->
    <link rel="stylesheet" href="/res/ace/assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="/res/ace/assets/css/ace-rtl.min.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/res/ace/assets/css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->
    <style>
        body {
            background-color: #ffffff;
        }
    </style>
    <!-- ace settings handler -->
    <script src="/res/ace/assets/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="/res/ace/assets/js/html5shiv.min.js"></script>
    <script src="/res/ace/assets/js/respond.min.js"></script>
    <![endif]-->

</head>
<body>
<div class="col-xs-11">
    <form class="form-horizontal" id="myform" action="/back/brand/add" method="post">
        <div class="widget-box">
            <div class="widget-header">
                <ul class="breadcrumb">
                    <li>
                        <a href="/back/brand/toList">品牌列表</a>
                    </li>
                    <li class="active">品牌新增</li>
                </ul><!-- .breadcrumb -->
            </div>

            <div class="widget-body">
                <div class="widget-main">
                    <div class="form-group">
                        <label for="name" class="col-sm-1 control-label">名字</label>
                        <div class="col-sm-11">
                            <input type="text" class="form-control" id="name" name="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-1 control-label">描述</label>
                        <div class="col-sm-11">
                            <input type="text" class="form-control" id="description" name="description">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="webSite" class="col-sm-1 control-label">网址</label>
                        <div class="col-sm-11">
                            <input type="text" class="form-control" id="webSite" name="webSite">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="sort" class="col-sm-1 control-label">排序</label>
                        <div class="col-sm-11">
                            <input type="text" class="form-control" id="sort" name="sort">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-1 control-label">是否可用</label>
                        <div class="col-sm-11">

                            <%--<input class="ace ace-switch ace-switch-6" name="isDisplay"--%>
                            <%--type="checkbox" id="isDisplay" value="1">--%>
                            <%--<span class="lbl"></span>--%>
                            <div class="radio">
                                <label>
                                    <input name="isDisplay" type="radio" class="ace" value="1"/>
                                    <span class="lbl"> 可用</span>
                                </label>
                            </div>

                            <div class="radio">
                                <label>
                                    <input name="isDisplay" type="radio" class="ace" checked value="0"/>
                                    <span class="lbl"> 不可用</span>
                                </label>
                            </div>
                        </div>

                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-4 col-md-8">
                            <button class="btn btn-info  btn-sm" type="submit" id="validateBtn">
                                <i class="ace-icon fa fa-check"></i>
                                提交
                            </button>

                            &nbsp; &nbsp; &nbsp;
                            <button class="btn btn-sm" type="reset" id="resetBtn">
                                <i class="ace-icon fa fa-refresh"></i>
                                重置
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>

<!-- basic scripts -->

<!--[if !IE]> -->
<script src="/res/ace/assets/js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="/res/ace/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='/res/ace/assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="/res/ace/assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="/res/bootstrapValidator/dist/js/bootstrapValidator.min.js"></script>
<!--[if lte IE 8]>


<!-- ace scripts -->
<script src="/res/ace/assets/js/ace-elements.min.js"></script>
<script src="/res/ace/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    $(function () {
        $('#myform').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                name: {
                    validators: {
                        notEmpty: {
                            message: '品牌名称不能为空'
                        }
                    }
                },
                sort: {
                    validators: {
                        notEmpty: {
                            message: '排序不能为空'
                        },
                        digits: {
                            message: '必须是数字'
                        }
                    }
                }
            }
        });
    })

    $("#resetBtn").click(function () {
        $('#myform').bootstrapValidator('resetForm', true);
    });
</script>
</body>
</html>
