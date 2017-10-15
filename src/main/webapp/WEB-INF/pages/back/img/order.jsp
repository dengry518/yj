<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dengry
  Date: 2017/9/29
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/res/ace/assets/css/jquery-ui.min.css">
    <script src="/res/ace/assets/js/jquery-1.11.3.min.js"></script>
    <script src="/res/ace/assets/js/jquery-ui.min.js"></script>

    <style>
        .ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default {
            border: 1px solid #d3d3d3;
            background: #e6e6e6 url(/res/img/ui-bg_glass_75_e6e6e6_1x400.png) 50% 50% repeat-x;
            font-weight: 400;
            color: #555;
        }

        #sortable {
            list-style-type: none;
            margin: 0;
            padding: 0;
            width: 650px;
        }

        #sortable li {
            margin: 3px 3px 3px 0;
            padding: 1px;
            float: left;
            width: 200px;
            height: 190px;
            font-size: 4em;
            text-align: center;
        }
    </style>
    <script>
        $(function () {
            $("#sortable").sortable();
            $("#sortable").disableSelection();
        });
    </script>
</head>
<body>
<ul id="sortable">
    <c:forEach items="${imgs}" var="img">
        <li class="ui-state-default">
            <img src="http://localhost:8090/imgweb/upload/${img.url}.${img.type}" width="100" height="100">
            <span style="font-size: 10px">${img.size}</span>
        </li>
    </c:forEach>
</ul>
<input type="button" value="确定" id="btn">
<script>
    $(function () {
        $('#btn').click(function () {
            for (var i = 0; i < $('#sortable li').length; i++) {
                if (i % 3 == 0) {
                    var url = $('#sortable li').eq(i).find('img').attr('src');
                    var begin = url.lastIndexOf('/');
                    var end = url.indexOf('.');
                    var originalName = url.substring(begin + 1, end);
                    console.log(originalName);

                    url = $('#sortable li').eq(i).next().find('img').attr('src');
                    begin = url.lastIndexOf('/');
                    end = url.indexOf('.');
                    var midName = url.substring(begin + 1, end);

                    url = $('#sortable li').eq(i).next().next().find('img').attr('src');
                    begin = url.lastIndexOf('/');
                    end = url.indexOf('.');
                    var smallName = url.substring(begin + 1, end);//原来的名字--->name_small
                    $.post('/back/img/updateName', {midName:midName,smallName: smallName, original: originalName}, function (data) {
                        if(data.success){
//                            alert("排序成功!");
                        }
                    });
                }
            }
        });


    })
</script>
</body>
</html>
