<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dengry
  Date: 2017/9/28
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <title>易行运动商城-电子商城</title>
    <link rel="stylesheet" href="/res/css/style.css"/>
    <link rel="stylesheet" href="/res/kkpager/kkpager_orange.css"/>
    <script src="/res/ace/assets/js/jquery-1.11.3.min.js"></script>
    <script src="/res/kkpager/kkpager.js"></script>
    <script src="/res/js/com.js"></script>
    <script type="text/javascript">
        //登陆
        function login() {
            window.location.href = "../buyer/login.jsp";
        }
    </script>
</head>
<body>
<div class="bar">
    <div class="bar_w">
        <p class="l">
		<span class="l">
			收藏本网站！北京<a href="#" title="更换">[更换]</a>
		</span>
        </p>
        <ul class="r uls">
            <li class="dev">您好,欢迎来到易行运动商城！</li>
            <li class="dev"><a href="javascript:void(0)" onclick="login()" title="登陆">[登陆]</a></li>
            <li class="dev"><a href="javascript:void(0)" onclick="register()" title="免费注册">[免费注册]</a></li>
            <li class="dev"><a href="javascript:void(0)" onclick="logout()" title="退出">[退出]</a></li>
            <li class="dev"><a href="javascript:void(0)" onclick="myOrder()" title="我的订单">我的订单</a></li>
            <li class="dev"><a href="#" title="在线客服">在线客服</a></li>
            <li class="dev after"><a href="#" title="English">English</a></li>
        </ul>
    </div>
</div>
<div class="w loc">
    <div class="h-title">
        <div class="h-logo"><a href="http://localhost:8080"><img src="/res/img/pic/logo-1.png"/></a></div>
        <div class="h-search">
            <input type="text"/>
            <div class="h-se-btn"><a href="#">搜索</a></div>
        </div>
    </div>
    <dl id="cart" class="cart r">
        <dt><a href="#" title="结算">结算</a>购物车:<b id="">5</b>件</dt>
        <dd class="hidden">
            <p class="alg_c hidden">购物车中还没有商品，赶紧选购吧！</p>
            <h3 title="最新加入的商品">最新加入的商品</h3>
            <ul class="uls">
                <li>
                    <a href="#"
                       title="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元">
                        <img src="/res/img/pic/p50x50.jpg"
                             alt="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元"/></a>
                    <p class="dt"><a href="#"
                                     title="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元">依琦莲2014瑜伽服套装新
                        瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元</a></p>
                    <p class="dd">
                        <b><var>¥128</var><span>x1</span></b>
                        <a href="javascript:void(0);" title="删除" class="del">删除</a>
                    </p>
                </li>
                <li>
                    <a href="#"
                       title="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元">
                        <img src="/res/img/pic/p50x50.jpg"
                             alt="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元"/></a>
                    <p class="dt"><a href="#"
                                     title="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元">依琦莲2014瑜伽服套装新
                        瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元</a></p>
                    <p class="dd">
                        <b><var>¥128</var><span>x1</span></b>
                        <a href="javascript:void(0);" title="删除" class="del">删除</a>
                    </p>
                </li>
                <li>
                    <a href="#"
                       title="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元">
                        <img src="/res/img/pic/p50x50.jpg"
                             alt="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元"/></a>
                    <p class="dt"><a href="#"
                                     title="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元">依琦莲2014瑜伽服套装新
                        瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元</a></p>
                    <p class="dd">
                        <b><var>¥128</var><span>x1</span></b>
                        <a href="javascript:void(0);" title="删除" class="del">删除</a>
                    </p>
                </li>
                <li>
                    <a href="#"
                       title="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元">
                        <img src="/res/img/pic/p50x50.jpg"
                             alt="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元"/></a>
                    <p class="dt"><a href="#"
                                     title="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元">依琦莲2014瑜伽服套装新
                        瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元</a></p>
                    <p class="dd">
                        <b><var>¥128</var><span>x1</span></b>
                        <a href="javascript:void(0);" title="删除" class="del">删除</a>
                    </p>
                </li>
                <li>
                    <a href="#"
                       title="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元">
                        <img src="/res/img/pic/p50x50.jpg"
                             alt="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元"/></a>
                    <p class="dt"><a href="#"
                                     title="依琦莲2014瑜伽服套装新 瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元">依琦莲2014瑜伽服套装新
                        瑜珈健身服三件套 广场舞蹈服装 女瑜伽服送胸垫 长袖紫色 M全场支持货到付款 全网最低价 千人超高好评瑜伽服赶紧抢！全五分好评截图联系客服还返现五元</a></p>
                    <p class="dd">
                        <b><var>¥128</var><span>x1</span></b>
                        <a href="javascript:void(0);" title="删除" class="del">删除</a>
                    </p>
                </li>
            </ul>
            <div>
                <p>共<b>5</b>件商品&nbsp;&nbsp;&nbsp;&nbsp;共计<b class="f20">¥640.00</b></p>
                <a href="#" title="去购物车结算" class="inb btn120x30c">去购物车结算</a>
            </div>
        </dd>
    </dl>
</div>

<div class="w ofc">
    <div class="l wl">
        <h2 class="h2 h2_l"><em title="销量排行榜">销量排行榜</em><cite></cite></h2>
        <div class="box bg_white">
            <ul class="uls x_50x50">
                <li>
                    <var class="sfont">1</var>
                    <a href="#" title="富一代" target="_blank" class="pic"><img src="/res/img/pic/ppp.jpg"
                                                                             alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <!-- dt 8个文字+... -->
                        <dt><a href="#" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="orange">￥120 ~ ￥150</dd>
                    </dl>
                </li>
                <li>
                    <var class="sfont">2</var>
                    <a href="#" title="富一代" target="_blank" class="pic"><img src="/res/img/pic/ppp.jpg"
                                                                             alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <!-- dt 8个文字+... -->
                        <dt><a href="#" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="orange">￥120 ~ ￥150</dd>
                    </dl>
                </li>
                <li>
                    <var class="sfont">3</var>
                    <a href="#" title="富一代" target="_blank" class="pic"><img src="/res/img/pic/ppp.jpg"
                                                                             alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <!-- dt 8个文字+... -->
                        <dt><a href="#" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="orange">￥120 ~ ￥150</dd>
                    </dl>
                </li>
                <li>
                    <a href="#" title="富一代" target="_blank" class="pic"><img src="/res/img/pic/ppp.jpg"
                                                                             alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <!-- dt 8个文字+... -->
                        <dt><a href="#" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="orange">￥120 ~ ￥150</dd>
                    </dl>
                </li>
                <li>
                    <a href="#" title="富一代" target="_blank" class="pic"><img src="/res/img/pic/ppp.jpg"
                                                                             alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <!-- dt 8个文字+... -->
                        <dt><a href="#" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="orange">￥120 ~ ￥150</dd>
                    </dl>
                </li>
                <li>
                    <a href="#" title="富一代" target="_blank" class="pic"><img src="/res/img/pic/ppp.jpg"
                                                                             alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <!-- dt 8个文字+... -->
                        <dt><a href="#" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="orange">￥120 ~ ￥150</dd>
                    </dl>
                </li>
            </ul>
        </div>

        <h2 class="h2 h2_l mt"><em title="我的浏览记录">我的浏览记录</em><cite></cite></h2>
        <div class="box bg_white">
            <ul class="uls x_50x50">
                <li>
                    <a href="#" title="富一代" target="_blank" class="pic"><img src="/res/img/pic/ppp.jpg"
                                                                             alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <!-- dt 8个文字+... -->
                        <dt><a href="#" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="orange">￥120 ~ ￥150</dd>
                    </dl>
                </li>
                <li>
                    <a href="#" title="富一代" target="_blank" class="pic"><img src="/res/img/pic/ppp.jpg"
                                                                             alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <!-- dt 8个文字+... -->
                        <dt><a href="#" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="orange">￥120 ~ ￥150</dd>
                    </dl>
                </li>
                <li>
                    <a href="#" title="富一代" target="_blank" class="pic"><img src="/res/img/pic/ppp.jpg"
                                                                             alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <!-- dt 8个文字+... -->
                        <dt><a href="#" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="orange">￥120 ~ ￥150</dd>
                    </dl>
                </li>
                <li>
                    <a href="#" title="富一代" target="_blank" class="pic"><img src="/res/img/pic/ppp.jpg"
                                                                             alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <!-- dt 8个文字+... -->
                        <dt><a href="#" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="orange">￥120 ~ ￥150</dd>
                    </dl>
                </li>
                <li>
                    <a href="#" title="富一代" target="_blank" class="pic"><img src="/res/img/pic/ppp.jpg"
                                                                             alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <!-- dt 8个文字+... -->
                        <dt><a href="#" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="orange">￥120 ~ ￥150</dd>
                    </dl>
                </li>
                <li>
                    <a href="#" title="富一代" target="_blank" class="pic"><img src="/res/img/pic/ppp.jpg"
                                                                             alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <!-- dt 8个文字+... -->
                        <dt><a href="#" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="orange">￥120 ~ ￥150</dd>
                    </dl>
                </li>
            </ul>
        </div>

        <h2 class="h2 h2_l mt"><em title="商家精选">商家精选</em><cite></cite></h2>
        <img src="/res/img/pic/ad200x75.jpg" alt=""/>
    </div>
    <div class="r wr">
        <h2 class="h2 h2_r rel"><samp></samp><em title="热卖推荐">&nbsp;&nbsp;&nbsp;热卖推荐</em></h2>
        <div class="box bg_white">
            <ul class="uls i_150x150 x4_150x150">
                <li>
                    <a href="productDetail.jsp" title="富一代" target="_blank" class="pic"><img
                            src="	/res/img/pic/ppp.jpg" alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <dt><a href="productDetail.jsp" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="h40">依琦莲2014瑜伽服套装新！</dd>
                        <dd class="orange">￥120 ~ ￥150</dd>
                        <dd><a href="productDetail.jsp" title="立即抢购" class="inb btn70x21 mr">立即抢购</a></dd>
                    </dl>
                </li>
                <li>
                    <a href="productDetail.jsp" title="富一代" target="_blank" class="pic"><img
                            src="	/res/img/pic/ppp.jpg" alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <dt><a href="productDetail.jsp" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="h40">依琦莲2014瑜伽服套装新！</dd>
                        <dd class="orange">￥120 ~ ￥150</dd>
                        <dd><a href="productDetail.jsp" title="立即抢购" class="inb btn70x21 mr">立即抢购</a></dd>
                    </dl>
                </li>
                <li>
                    <a href="productDetail.jsp" title="富一代" target="_blank" class="pic"><img
                            src="	/res/img/pic/ppp.jpg" alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <dt><a href="productDetail.jsp" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="h40">依琦莲2014瑜伽服套装新！</dd>
                        <dd class="orange">￥120 ~ ￥150</dd>
                        <dd><a href="productDetail.jsp" title="立即抢购" class="inb btn70x21 mr">立即抢购</a></dd>
                    </dl>
                </li>
                <li>
                    <a href="productDetail.jsp" title="富一代" target="_blank" class="pic"><img
                            src="	/res/img/pic/ppp.jpg" alt="依琦莲2014瑜伽服套装新"/></a>
                    <dl>
                        <dt><a href="productDetail.jsp" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
                        <dd class="h40">依琦莲2014瑜伽服套装新！</dd>
                        <dd class="orange">￥120 ~ ￥150</dd>
                        <dd><a href="productDetail.jsp" title="立即抢购" class="inb btn70x21 mr">立即抢购</a></dd>
                    </dl>
                </li>
            </ul>
        </div>

        <h2 class="h2 h2_filter mt"><em title="商品筛选">商品筛选</em><cite><a href="javascript:void(0);" id="filterRest"
                                                                       title="重置筛选条件">重置筛选条件</a></cite></h2>
        <ul class="uls filter">
            <form id="myform" method="post">
                <input name="brandId" id="brandId" type="hidden">
                <input name="typeId" id="typeId" type="hidden">
                <input name="pageNo" id="pageNo" type="hidden">
            </form>
            <li style="display: none" id="options"><label>已选条件：</label>
                <p class="sel">
                   <%-- <a href="javascript:void(0);">
                        <em>品牌：</em>依琦莲
                        <cite title="关闭此筛选条件">X</cite></a>--%>
                </p>
            </li>
            <li id="brand"><b>品牌：</b>
                <p>
                    <a href="javascript:void(0);" title="不限" class="here">不限</a>
                    <c:forEach items="${brands}" var="brand">
                        <a href="javascript:;" title="${brand.name}" brandId="${brand.id}">${brand.name}</a>
                    </c:forEach>
                </p></li>
            <li><b>价格：</b>
                <p>
                    <a href="javascript:void(0);" title="不限" class="here">不限</a>
                    <a href="javascript:void(0);" title="1-99">0-79</a>
                    <a href="javascript:void(0);" title="100-199">80-199</a>
                    <a href="javascript:void(0);" title="200-499">200-299</a>
                    <a href="javascript:void(0);" title="200-499">300-499</a>
                    <a href="javascript:void(0);" title="200-499">500-599</a>
                    <a href="javascript:void(0);" title="200-499">600以上</a>
                </p></li>
            <li id="type"><b>类型：</b>
                <p>
                    <a href="javascript:void(0);" title="不限" class="here">不限</a>
                    <c:forEach items="${types}" var="type">
                        <a href="javascript:;" title="${type.name}" typeId="${type.id}">${type.name}</a>
                    </c:forEach>
                </p></li>
            <li><b>材质：</b>
                <p>
                    <span><a href="javascript:void(0);" title="不限" class="here">不限</a></span>
                    <c:forEach items="${features}" var="feature">
                        <span><a href="javascript:;" title="${feature.name}">${feature.name}</a></span>
                    </c:forEach>

                </p></li>

            <li><b>适用人群：</b>
                <p>
                    <a href="javascript:void(0);" title="不限" class="here">不限</a>
                    <a href="javascript:void(0);" title="男士">男士</a>
                    <a href="javascript:void(0);" title="女士">女士</a>
                    <a href="javascript:void(0);" title="儿童">儿童</a>
                    <a href="javascript:void(0);" title="中性">中性</a>
                </p></li>
        </ul>
        <div class="sort_type">
            <a href="javascript:void(0);" title="销量" class="sales">销量</a>
            <a href="javascript:void(0);" title="价格" class="price">价格</a>
            <a href="javascript:void(0);" title="上架时间" class="time">上架时间</a>
        </div>
        <div class="mt ofc">
            <ul class="uls i_150x150 x4_150x150b" id="products">
                <%--<c:forEach items="${data.rows}" var="product">
                    <li>
                        <a href="productDetail.jsp" title="${product.name}" target="_blank" class="pic"><img
                                src="http://localhost:8080/upload/${product.imgUrl}" alt="瑜伽服"/></a>
                        <dl>
                            <!-- dt 10个文字+... -->
                            <dt><a href="/front/product/toProductDetail/${product.id}" title="${product.name}" target="_blank">${product.name}</a>
                            </dt>
                            <!-- dt 25个文字+... -->
                            <dd class="h40">${product.name}</dd>
                            <dd class="orange">￥${product.price}</dd>
                            <dd>北京有货</dd>
                            <dd><a href="#" title="加入购物车" class="inb btn70x21 mr">加入购物车</a></dd>
                        </dl>
                        <img src="/res/img/pic/hot.gif" alt="热门" class="type"/>
                    </li>
                </c:forEach>--%>
            </ul>
            <div class="page pb15">
                <div id="kkpager">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="mode">
    <div class="tl"></div>
    <div class="tr"></div>
    <ul class="uls">
        <li class="first">
            <span class="guide"></span>
            <dl>
                <dt title="购物指南">购物指南</dt>
                <dd><a href="#" title="购物流程">购物流程</a></dd>
                <dd><a href="#" title="购物流程">购物流程</a></dd>
                <dd><a href="#" target="_blank" title="联系客服">联系客服</a></dd>
                <dd><a href="#" target="_blank" title="联系客服">联系客服</a></dd>
            </dl>
        </li>
        <li>
            <span class="way"></span>
            <dl>
                <dt title="支付方式">支付方式</dt>
                <dd><a href="#" title="货到付款">货到付款</a></dd>
                <dd><a href="#" title="在线支付">在线支付</a></dd>
                <dd><a href="#" title="分期付款">分期付款</a></dd>
                <dd><a href="#" title="分期付款">分期付款</a></dd>
            </dl>
        </li>
        <li>
            <span class="help"></span>
            <dl>
                <dt title="配送方式">配送方式</dt>
                <dd><a href="#" title="上门自提">上门自提</a></dd>
                <dd><a href="#" title="上门自提">上门自提</a></dd>
                <dd><a href="#" title="上门自提">上门自提</a></dd>
                <dd><a href="#" title="上门自提">上门自提</a></dd>
            </dl>
        </li>
        <li>
            <span class="service"></span>
            <dl>
                <dt title="售后服务">售后服务</dt>
                <dd><a href="#" target="_blank" title="售后策略">售后策略</a></dd>
                <dd><a href="#" target="_blank" title="售后策略">售后策略</a></dd>
                <dd><a href="#" target="_blank" title="售后策略">售后策略</a></dd>
                <dd><a href="#" target="_blank" title="售后策略">售后策略</a></dd>
            </dl>
        </li>
        <li>
            <span class="problem"></span>
            <dl>
                <dt title="特色服务">特色服务</dt>
                <dd><a href="#" target="_blank" title="夺宝岛">夺宝岛</a></dd>
                <dd><a href="#" target="_blank" title="夺宝岛">夺宝岛</a></dd>
                <dd><a href="#" target="_blank" title="夺宝岛">夺宝岛</a></dd>
                <dd><a href="#" target="_blank" title="夺宝岛">夺宝岛</a></dd>
            </dl>
        </li>
    </ul>
</div>
<script>
    function AjaxData(currpage) {
        //从表单中取查询条件
        var brandId = $('#brandId').val();
        var typeId = $('#typeId').val();
        var data = {
            pageNo: currpage,
            brandId: brandId,
            typeId: typeId
        }
        $.post('/front/product/getProducts', data, function (data) {
            //清空上一次的数据
            $('#products').empty();

            for (var i = 0; i < data.rows.length; i++) {
                var product = data.rows[i];
                var li = $('<li></li>');

                var a = $('<a></a>');
                a.attr('href', 'productDetail.jsp');
                a.attr('title', product.name);
                a.attr('target', '_blank');
                a.attr('class', 'pic');

                var aimg = $('<img alt="瑜伽服"/>');
                aimg.attr('src', 'http://localhost:8090/imgweb/upload/' + product.imgUrl);
                a.append(aimg);

                var dl = $('<dl></dl>');

                var dt = $('<dt></dt>');
                var dta = $('<a></a>');
                dta.attr('href', '/front/product/toProductDetail/' + product.id);
                dta.attr('title', product.name);
                dta.attr('target', '_blank');
                dta.text(product.name);
                dt.append(dta);

                var dd0 = $('<dd class="h40"></dd>');
                dd0.text(product.name);
                var dd1 = $('<dd class="orange"></dd>');
                dd1.text('￥' + product.price);
                var dd2 = $('<dd>北京有货</dd>');
                var dd3 = $('<dd><a href="#" title="加入购物车" class="inb btn70x21 mr">加入购物车</a></dd>');
                dl.append(dt);
                dl.append(dd0);
                dl.append(dd1);
                dl.append(dd2);
                dl.append(dd3);

                var img = $('<img src="/res/img/pic/hot.gif" alt="热门" class="type"/>');
                li.append(a);
                li.append(dl);
                li.append(img);

                $('#products').append(li);
            }


            kkpager.generPageHtml({
                //当前页码
                pno: data.pageNo,
                //总页码
                total: data.pages,
                //总数据条数
                totalRecords: data.total,

                mode: 'click',
                click: function (n) {
                    AjaxData(n);
                    //手动选中按钮
                    this.selectPage(n);
                    return false;
                }
            }, true);

        });
    }


    $(function () {
        //不带条件分页
        AjaxData(1);

        $('#brand a:gt(0)').click(function () {
            var $options=$('#options');
            var p=$('.sel');
            //1.已选条件要显示
            $options.show();
            var brandName=$(this).text();
            var brandId=$(this).attr('brandId');
            var a=$('<a></a>');
            a.attr('href','javascript:;');
            var em=$('<em>品牌: </em>');
            a.append(em);
            a.append(brandName);
            var cite=$('<cite title="关闭此筛选条件">X</cite>');
            a.append(cite);

            //去掉该查询条件
            a.click(function () {
                $('#brandId').val('');
                $(this).remove();
                $('#brand').show();
                //若所有查询条件都去掉了，options隐藏
                if (p.children().length == 0) {
                    $options.hide();
                }
                AjaxData(1);
            });

            p.append(a);
            //2.品牌选项要隐藏
            $('#brand').hide();
            //3.将要查询的品牌Id写入查询表单
            $('#brandId').val(brandId);

            AjaxData(1);
        });



        $('#type').find('a:gt(0)').click(function () {
            //点击类型,类型列表隐藏
            $('#type').hide();
            //查询条件显示(初始条件默认隐藏)
            $('#options').show();
            var n = $(this).attr('title');//类型名
            var id = $(this).attr('typeId');//类型id

            var a = $('<a></a>');
            a.attr('href', 'javascript:;');
            a.html('<em>类型：</em>' + n);
            var cite = $('<cite title="关闭此筛选条件">X</cite>');
            a.append(cite);
            a.click(function () {
                $('#typeId').val('');
                $(this).remove();
                $('#type').show();
                if ($('.sel').children().length == 0) {
                    $('#options').hide();
                }
                AjaxData(1);
            });

            $('.sel').append(a);
            $('#typeId').val(id);
            AjaxData(1);

        });

    });
</script>
</body>
</html>
