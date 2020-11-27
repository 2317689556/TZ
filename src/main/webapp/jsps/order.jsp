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

</head>

<body>
<%--<c:import url="utlis/background.jsp"/>--%>
<%--<c:import url="utlis/broadside.jsp"/>--%>
<div style="width: 1400px; height: 1400px; ">
    <div class="container">
        <div class="row">

        </div>
    </div>
    <div style="margin: 40px; margin-top: 20px; box-shadow: 0 0 4px black; height: 1200px; padding: 10px;">
        <h3 class="text-center">保证金缴纳订单</h3>
        <table id="tab1"></table>
        <button class="text-center" type="button">打印</button>
    </div>
</div>
<script>
    $("#tab1").bootstrapTable({
        url: '/findInfoOrder',
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
                field: 'itemName',
                title: '项目名称'
            }, {
                field: 'cmcostAmount',
                title: '保证金'
            }, {
                field: 'depositPayEndTime',
                title: '截止时间'
            }
        ]
    })

</script>
</body>
</html>
