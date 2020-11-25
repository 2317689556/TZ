<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <script src="/bootstrap/table/bootstrap-table.js"></script>
    <script src="/bootstrap/js/bootstrap-tab.js"></script>
    <script src="/bootstrap/js/bootstrap.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="/cxCalendar/js/jquery.cxcalendar.js"></script>
    <script src="/cxCalendar/js/jquery.cxcalendar.languages.js"></script>
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap-tab.css">
    <link rel="stylesheet" href="/cxCalendar/css/jquery.cxcalendar.css">
    <script>


    </script>
</head>

<body>
<%--<c:import url="utlis/background.jsp"/>--%>
<%--<c:import url="utlis/broadside.jsp"/>--%>
<div style="width: 1400px; height: 1400px; ">
    <div class="container">
        <div class="row">
            <div class="span8">

                <ul class="nav nav-pills">
                    <li class="active"><a href="#">首页</a></li>
                    <li><a href="#">信息公开</a></li>
                    <li><a href="#">信用平台</a></li>
                    <li><a href="#">政策法规</a></li>
                    <li><a href="#">办事指南</a></li>
                    <li><a href="#">资料下载</a></li>
                    <li><a href="#">联系我们</a></li>
                    <li><a href="#">老网站</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div style="margin: 40px; margin-top: 20px; box-shadow: 0 0 4px black; height: 1200px; padding: 10px;">
        <table id="tab1">
            <div>
            <img src="/images/u755.png">
            <img src="/images/u733.png">
            <img src="/images/u759.png">
            <img src="/images/u753.png">
            <img src="/images/u761.png">
            <img src="/images/u733.png">
            <img src="/images/u763.png">
            <img src="/images/u847.png">
            </div>
            <div>
                <img src="/images/u709.png">
            </div>

            <div>
                <h3 class="text-primary" class="text-left">标的信息</h3>
                <img src="/images/u789.png">
            </div>
            <div>
                <img src="/images/u670.png">
            </div>
            <div>
                <h3 class="text-primary" class="text-left">下载出让文件</h3>
                <img src="/images/u789.png">
            </div>
            <div>
                <img src="/images/u794.png">
            </div>
            <div>

                <a href="/jsps/rule.jsp">下一步</a>

            </div>
        </table>
    </div>
</div>

</body>
</html>
