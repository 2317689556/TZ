
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
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
  /*  #F1{
        width:100%
    }*/
    #F2{
        width:100%;
        height:100%;
        background: white;
    }
   /* #bg {
        background-color: rgb(102, 132, 228);
        padding: 10px;
    }
    #F3{
        background: white;
        padding: 5px;
        float: right;
    }*/
    #F4{
        padding-left: 22%;
        padding-right: 20%;

    }
    #F5{
        width: 100%;
        padding-left: 20%;
    }
    #test10{
        width: 299px;
        height: 237px;
        float: left;
    }
    #ff{
        width: 400px;
        height: 240px;
        float: left;
        padding-left: 5px;
    }
    #ff2{
        width: 328px;
        height: 240px;
        float: left;
        padding-left: 15px;
    }
    #ff3{
        width: 300px;
    }
    #ff4{
        width: 85px;
        margin: 0;
        padding-top: 15px;
        padding-left: 10px;
        float: left;
    }
    #ff5{
        width: 85px;
        margin: 0;
        padding-top: 15px;
        padding-left: 20px;
        float: left;
    }
    #ff6{
        width: 85px;
        margin: 0;
        padding-top: 15px;
        padding-left: 33px;
        float: left;
    }
    #F6{
        width: 100%;
        background: white;
        padding-left: 20%;
    }

</style>
<body>
<%@include file="/jsps/toubu.jsp"%>
<%--<div id="F1">
<img src="/images/1.png" style="width: 100%">
</div>--%>
<div id="F2">
    <%@include file="/jsps/daohang.jsp"%>
    <%--<div id="F3">
        <a href="project.jsp" target="_blank"><button type="button" class="layui-btn layui-btn-normal">工程交易</button></a>
        <a href="http://sc.chinaz.com/" target="_blank"><button type="button" class="layui-btn layui-btn-normal">政府采购</button></a>
        <a href="http://sc.chinaz.com/" target="_blank"><button type="button" class="layui-btn layui-btn-normal">产权交易</button></a>
        <a href="http://sc.chinaz.com/" target="_blank"><button type="button" class="layui-btn layui-btn-normal">土地交易</button></a>
    </div>
    <!--导航栏-->
    <div id="bg">
        <div id="container">
            <ul id="nav">
                <li><a href="http://sc.chinaz.com/" target="_blank">首页</a></li>
                <li><a href="http://sc.chinaz.com/" target="_blank">信息公开</a></li>
                <li><a href="http://sc.chinaz.com/" target="_blank">信用平台</a></li>
                <li><a href="http://sc.chinaz.com/" target="_blank">政策法规</a></li>
                <li><a href="http://sc.chinaz.com/" target="_blank">办事指南</a></li>
                <li><a href="http://sc.chinaz.com/" target="_blank">资料下载</a></li>
                <li><a href="http://sc.chinaz.com/" target="_blank">联系我们</a></li>
                <li><a href="http://sc.chinaz.com/" target="_blank">老网站</a></li>
            </ul>
            <div id="buoy"></div>
        </div>
    </div>--%>
  <div id="F4">
    <strong>滚动新闻：金松主任率团赴南京、贵州、杭州交易中心考察调研</strong>
      &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
      &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
      &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
      &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
      &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
      &ensp;&ensp;&ensp;&ensp;
      <input type="radio" checked name="1">标题
      <input type="radio" checked name="1">全文
      <input type="text"><button type="button" class="layui-btn layui-btn-danger layui-btn-xs">搜索</button>
  </div>
<!--轮播图-->
<div id="F5">
    <div class="layui-carousel" id="test10">
        <div carousel-item="">
            <div><img src="/images/2.jpg" style="width: 100%;height: 100%"></div>
            <div><img src="/images/3.jpg" style="width: 100%;height: 100%"></div>
            <div><img src="/images/4.png" style="width: 100%;height: 100%"></div>
        </div>
    </div>
    <div id="ff">
        <img src="/images/xinwen.png" >
    </div>
    <div id="ff2">
        <button type="button" class="layui-btn layui-btn-normal">用户登录</button>
        <div style="width: 300px; margin: 0;padding-top: 5px;padding-left: 10px">
            <a href="/jsps/login.jsp" target="_top"><img src="/images/login1.png"></a>
        </div>
        <div id="ff3">
        <div id="ff4">
            <a href="/registered/registered.jsp" target="_top"><img src="/images/login2.png"></a>
        </div>
        <div id="ff5">
            <a href="http://www.baidu.com/" target="_top"><img src="/images/login3.png"></a>
        </div>
        <div id="ff6">
            <a href="http://www.baidu.com/" target="_top"><img src="/images/login4.png"></a>
        </div>
        </div>
    </div>
</div>
<div id="F6">
  <img src="/images/new.png">
</div>
</div>
</body>
<script type="text/javascript">
    /*导航栏*/
    $.nicenav(300);

    /*轮播图*/
    layui.use(['carousel', 'form'], function() {
        var carousel = layui.carousel
            , form = layui.form;

        carousel.render({
            elem: '#test10'
            ,width: '299px'
            ,height: '237px'
            ,interval: 5000
        });
    })

</script>
</html>
