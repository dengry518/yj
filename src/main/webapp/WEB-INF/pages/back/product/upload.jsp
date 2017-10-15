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
    <div id="wrapper">
        <div id="container">
            <!--头部，相册选择和格式选择-->
            <div id="uploader">
                <div class="queueList">
                    <div id="dndArea" class="placeholder">
                        <div id="filePicker"></div>
                        <p>或将照片拖到这里，单次最多可选300张</p>
                    </div>
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
<script type="text/javascript" src="/res/webuploader-0.1.5/image-upload/uploads.js"></script>


<!-- ace scripts -->
<script src="/res/ace/assets/js/ace-elements.min.js"></script>
<script src="/res/ace/assets/js/ace.min.js"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    productId=${productId}
</script>
</body>
</html>
