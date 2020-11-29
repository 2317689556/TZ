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
<div style="width: 1400px; height: 1400px; ">

    <%--<div class="container">
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
    </div>--%>
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
        </table>
        <table id="Info"></table>
        <p><a href="info.jsp">缴纳保证金</a></p>
        <p><a href="rule.jsp">上一步</a></p>

    </div>
</div>

<script>

    $("#Info").bootstrapTable({
        url: '/findInfo',
        method: 'post',//提交方式
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",//发送到服务器的编码类型
        striped: true,
        search: false,
        sidePagination: "client",//分页方式 'client'为客户端分页
        cache: false,//是否使用缓存
        queryParams: function (param) {//请求参数 封装的表格对象

        },
        columns: [
            {
                field: 'objectCode',
                title: '标的编号'
            }, {
                field: 'objectName',
                title: '标的名称'
            }, {
                field: 'cmcostAmount',
                title: '保证金'
            }, {
                field: 'depositPayEndTime',
                title: '截止时间',
            }
        ]
    })
</script>

</body>
</html>
