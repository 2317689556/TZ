
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导航栏</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <script src="/bootstrap/table/bootstrap-table.js"></script>
    <script src="/bootstrap/js/bootstrap-tab.js"></script>
    <script src="/bootstrap/js/bootstrap.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="/cxCalendar/js/jquery.cxcalendar.js"></script>
    <script src="/cxCalendar/js/jquery.cxcalendar.languages.js"></script>
    <script src="/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="/js/jquery.nicenav.js" type="text/javascript"></script>
    <script src="/layui/layui.js" charset="UTF-8"></script>
    <link href="/css/nicenav.css" rel="stylesheet" />
    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap-tab.css">
    <link rel="stylesheet" href="/cxCalendar/css/jquery.cxcalendar.css">
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>
<style type="text/css">
    #bg {
        background-color: rgb(102, 132, 228);
        padding: 10px;
    }
    #F3{
        background: white;
        padding: 5px;
        float: right;
    }
</style>
<body>
<div id="F3">
    <button type="button" class="layui-btn layui-btn-normal" onclick="gc(this.id=1)">工程交易</button>
    <button type="button" class="layui-btn layui-btn-normal" onclick="gc(this.id=2)">政府采购</button>
    <button type="button" class="layui-btn layui-btn-normal" onclick="gc(this.id=3)">产权交易</button>
    <button type="button" class="layui-btn layui-btn-normal" onclick="gc(this.id=4)">土地交易</button>
</div>
<!--导航栏-->
<div id="bg">
    <div id="container">
        <ul id="nav">
            <li><a href="/jsps/firstpage.jsp" target="_top">首页</a></li>
            <li><a href="http://www.baidu.com/" target="_top">信息公开</a></li>
            <li><a href="http://www.baidu.com/" target="_top">信用平台</a></li>
            <li><a href="/jsps/rule.jsp" target="_top">政策法规</a></li>
            <li><a href="http://www.baidu.com/" target="_top">办事指南</a></li>
            <li><a href="http://www.baidu.com/" target="_top">资料下载</a></li>
            <li><a href="http://www.baidu.com/" target="_top">联系我们</a></li>
            <li><a href="http://www.baidu.com/" target="_top">老网站</a></li>
        </ul>
        <div id="buoy"></div>
    </div>
</div>
</body>
<script type="text/javascript">
    /*导航栏*/
    $.nicenav(300);
    var ids="";
    function gc(id) {
        ids=id
      localStorage.setItem("id",ids);
        location.href="/PbObject/PbObjectFindAllById?id="+ids;
    }
</script>
</html>
