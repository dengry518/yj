<%--
  Created by IntelliJ IDEA.
  User: dengry
  Date: 2017/9/30
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap Login Form Template</title>

    <!-- CSS -->
    <link rel="stylesheet" href="/res/ace/assets/css/fonts.googleapis.com.css"/>
    <link rel="stylesheet" href="/res/ace/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/res/ace/assets/font-awesome/4.5.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="/res/css/form-elements.css">
    <link rel="stylesheet" href="/res/css/login.css">
    <link rel="stylesheet" href="/res/css/supersized.css"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="/res/ace/assets/js/html5shiv.min.js"></script>
    <script src="/res/ace/assets/js/respond.min.js"></script>
    <script src="/res/scripts/particles.min.js"></script>
    <![endif]-->

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="/res/img/login/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/res/img/login/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/res/img/login/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/res/img/login/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/res/img/login/apple-touch-icon-57-precomposed.png">

</head>

<body>
<script src="/res/scripts/canvas-nest.js" count="200" zindex="-2" opacity="0.5" color="47,135,193"
        type="text/javascript">
</script>
<!-- Top content -->
<div class="top-content">
    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>用户登陆</h3>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-lock"></i>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form role="form" action="/back/emp/login" method="post" class="login-form">
                            <div class="form-group">
                                <label class="sr-only" for="form-username">账号</label>
                                <input type="text" name="username" placeholder="账号..."
                                       class="form-username form-control" id="form-username">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">密码</label>
                                <input type="password" name="password" placeholder="密码..."
                                       class="form-password form-control" id="form-password">
                            </div>
                            <button type="submit" class="btn"><i class="fa fa-refresh fa-spin"></i>&nbsp;登&nbsp;&nbsp;陆</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>


<!-- Javascript -->
<script src="/res/ace/assets/js/jquery-1.11.3.min.js"></script>
<script src="/res/scripts/supersized.3.2.7.min.js"></script>
<script src="/res/scripts/supersized-init.js"></script>
<script src="/res/ace/assets/js/bootstrap.min.js"></script>
<script src="/res/scripts/login.js"></script>

<!--[if lt IE 10]>
<script src="/res/scripts/placeholder.js"></script>
<![endif]-->

</body>

</html>