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
    <link rel="stylesheet" type="text/css" href="/res/webuploader-0.1.5/webuploader.css">
    <link rel="stylesheet" type="text/css" href="/res/webuploader-0.1.5/image-upload/style.css">
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
    <form class="form-horizontal" id="myform" action="/back/product/add" method="post">
        <div class="widget-box" id="widget-box-10">
            <div class="widget-header widget-header-small">
                <ul class="breadcrumb">
                    <li>
                        <a href="/back/product/toList">商品列表</a>
                    </li>
                    <li class="active">商品新增</li>
                </ul><!-- .breadcrumb -->

                <!-- #section:custom/widget-box.tabbed -->
                <div class="widget-toolbar no-border">
                    <ul class="nav nav-tabs" id="myTab">
                        <li class="active">
                            <a data-toggle="tab" href="#home">基本信息</a>
                        </li>

                        <li>
                            <a data-toggle="tab" href="#upd">图片上传</a>
                        </li>

                        <li>
                            <a data-toggle="tab" href="#info">商品描述</a>
                        </li>
                    </ul>
                </div>

                <!-- /section:custom/widget-box.tabbed -->
            </div>

            <div class="widget-body">
                <div class="widget-main padding-6">
                    <div class="tab-content">
                        <div id="home" class="tab-pane in active">
                            <div class="form-group">
                                <label for="typeId" class="col-sm-1 control-label">商品类型</label>
                                <div class="col-sm-11">
                                    <select class="form-control" name="type.id" id="typeId">
                                        <option value="">请选择</option>
                                        <c:forEach items="${types}" var="type">
                                            <option value="${type.id}">${type.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="name" class="col-sm-1 control-label">名称</label>
                                <div class="col-sm-11">
                                    <input type="text" class="form-control" id="name" name="name">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="brandId" class="col-sm-1 control-label">商品品牌</label>
                                <div class="col-sm-11">
                                    <select class="form-control" name="brand.id" id="brandId">
                                        <option value="">请选择</option>
                                        <c:forEach items="${brands}" var="brand">
                                            <option value="${brand.id}">${brand.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="weight" class="col-sm-1 control-label">毛重(KG)</label>
                                <div class="col-sm-11">
                                    <input type="text" class="form-control" id="weight" name="weight" value="0.6">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="price" class="col-sm-1 control-label">价格</label>
                                <div class="col-sm-11">
                                    <input type="text" class="form-control" id="price" name="price">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-1 control-label">材质</label>
                                <div class="col-sm-11">
                                    <c:forEach items="${features}" var="feature">
                                        <div class="checkbox" style="float: left">
                                            <label>
                                                <input name="feature" class="ace ace-checkbox-2"
                                                       type="checkbox"
                                                       value="${feature.id}"/>
                                                <span class="lbl"> ${feature.name}</span>
                                            </label>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-1 control-label">尺码</label>
                                <div class="col-sm-11">
                                    <div class="checkbox" style="float: left">
                                        <label>
                                            <input name="size" class="ace ace-checkbox-2" type="checkbox"
                                                   value="S"/>
                                            <span class="lbl"> S</span>
                                        </label>
                                    </div>
                                    <div class="checkbox" style="float: left">
                                        <label>
                                            <input name="size" class="ace ace-checkbox-2" type="checkbox"
                                                   value="M"/>
                                            <span class="lbl"> M</span>
                                        </label>
                                    </div>
                                    <div class="checkbox" style="float: left">
                                        <label>
                                            <input name="size" class="ace ace-checkbox-2" type="checkbox"
                                                   value="L"/>
                                            <span class="lbl"> L</span>
                                        </label>
                                    </div>
                                    <div class="checkbox" style="float: left">
                                        <label>
                                            <input name="size" class="ace ace-checkbox-2" type="checkbox"
                                                   value="XL"/>
                                            <span class="lbl"> XL</span>
                                        </label>
                                    </div>
                                    <div class="checkbox" style="float: left">
                                        <label>
                                            <input name="size" class="ace ace-checkbox-2" type="checkbox"
                                                   value="XXL"/>
                                            <span class="lbl"> XXL</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-1 control-label">颜色</label>
                                <div class="col-sm-11">
                                    <c:forEach items="${colors}" var="color">
                                        <div class="checkbox" style="float: left">
                                            <label>
                                                <input name="color" class="ace ace-checkbox-2"
                                                       type="checkbox"
                                                       value="${color.id}"/>
                                                <span class="lbl"> ${color.name}</span>
                                            </label>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-1 control-label">是否新品</label>
                                <div class="col-sm-11">
                                    <div class="radio" style="float: left">
                                        <label>
                                            <input name="isNew" type="radio" class="ace" value="1" checked/>
                                            <span class="lbl"> 是</span>
                                        </label>
                                    </div>

                                    <div class="radio" style="float: left">
                                        <label>
                                            <input name="isNew" type="radio" class="ace" value="0"/>
                                            <span class="lbl"> 否</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-1 control-label">是否推荐</label>
                                <div class="col-sm-11">
                                    <div class="radio" style="float: left">
                                        <label>
                                            <input name="isCommend" type="radio" class="ace" value="1" checked/>
                                            <span class="lbl"> 是</span>
                                        </label>
                                    </div>

                                    <div class="radio" style="float: left">
                                        <label>
                                            <input name="isCommend" type="radio" class="ace" value="0"/>
                                            <span class="lbl"> 否</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-1 control-label">是否热卖</label>
                                <div class="col-sm-11">
                                    <div class="radio" style="float: left">
                                        <label>
                                            <input name="isHot" type="radio" class="ace" value="1" checked/>
                                            <span class="lbl"> 是</span>
                                        </label>
                                    </div>

                                    <div class="radio" style="float: left">
                                        <label>
                                            <input name="isHot" type="radio" class="ace" value="0"/>
                                            <span class="lbl"> 否</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="packageList" class="col-sm-1 control-label">包装清单</label>
                                <div class="col-sm-11">
                                    <input type="text" class="form-control" id="packageList" name="packageList">
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

                        <div id="upd" class="tab-pane">
                            <div id="wrapper">
                                <div id="container">
                                    <!--头部，相册选择和格式选择-->
                                    <div id="uploader">
                                        <div class="queueList">
                                            <div id="dndArea" class="placeholder">
                                                <div id="filePicker"></div>
                                                <p>或将照片拖到这里，单次最多可选300张</p>
                                            </div>
                                            <input type="hidden" name="imgUrl" value="" id="imgUrl">
                                        </div>
                                        <div class="statusBar" style="display:none;">
                                            <div class="progress">
                                                <span class="text">0%</span>
                                                <span class="percentage"></span>
                                            </div>
                                            <div class="info"></div>
                                            <div class="btns">
                                                <div id="filePicker2"></div>
                                                <div class="uploadBtn">开始上传</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div id="info" class="tab-pane">
                            <script id="ueditorContainer" name="description" type="text/plain">

                            </script>
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
<script type="text/javascript" src="/res/layer/layer.js"></script>
<script type="text/javascript" src="/res/webuploader-0.1.5/webuploader.js"></script>
<script type="text/javascript" src="/res/webuploader-0.1.5/image-upload/upload.js"></script>
<!-- 配置文件 -->
<script type="text/javascript" src="/res/ueditor/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="/res/ueditor/ueditor.all.js"></script>
<!--[if lte IE 8]>


<!-- ace scripts -->
<script src="/res/ace/assets/js/ace-elements.min.js"></script>
<script src="/res/ace/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    var ue = UE.getEditor('ueditorContainer');
    UE.Editor.prototype._bkGetActionUrl = UE.Editor.prototype.getActionUrl;
    UE.Editor.prototype.getActionUrl = function (action) {
        if (action == 'uploadimage') {
            return '/upload2';
        } else if (action == 'listimage') {
            return '/listimage';
        }
        else {
            return this._bkGetActionUrl.call(this, action);
        }
    }
    $("#resetBtn").click(function () {
        $('#myform').bootstrapValidator('resetForm', true);
    });
    $(function () {
        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            //e.target返回的是DOM对象
            var target = e.target.toString(); //$(e.target)[0].hash;
            if (target.indexOf('upd') > 0) {
                uploader.refresh();
            }
        })

        //表单校验
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
                            message: '商品名称不能为空'
                        }
                    }
                },
                "type.id": {
                    validators: {
                        notEmpty: {
                            message: '商品类型不能为空'
                        }
                    }
                },
                price: {
                    validators: {
                        notEmpty: {
                            message: '价格不能为空'
                        },
                        digits: {
                            message: '必须是数字'
                        }
                    }
                }
            }
        });
    })
</script>
</body>
</html>
