<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>竞价详情</title>
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
    .c1{
        background-color: #5BC5FF;
        height: 30px;
    }
    .floatL {
        padding-top: 5px;
        padding-left:150px;
        _display: inline;
    }
    .F-Size {
        font-size: 14px;
    }
    .c3{
        width: 100%;

    }
    .c4{
        width: 700px;
        height: 300px;
        float: left;
        padding-top: 5px;
        padding-left:300px;

    }
    .c5{
        width: 800px;
        height: 300px;
        float: left;
        padding-top: 5px;
        padding-left:150px;
        font-size: 18px;
    }
</style>
<body>
<%@include file="/jsps/toubu.jsp"%>
<%@include file="/jsps/daohang.jsp"%>
<div class="c1">
    <div class="Title floatL">
        <div class="floatL">
            <span class="F-Size Font-weight">
                <h6> <img src="/images/newsimg.jpg" width="5" height="14"/>
                    <A href="/jsps/firstpage.jsp" target="_top">首页</A>>>
                    <A href="">产权交易</A> >>
                    <A href="">拓展资源公告</A> >>
                    <A href="">竞价</A></h6></span>
        </div>
    </div>
    </div>
<div class="c2">
    <c:forEach items="${y}" var="y">
    <div class="c3">
        <div class="c4">
           <STRONG>【第一次拍卖】用于体验网络司法拍卖竞拍流程，放心参与</STRONG><img src="${y.fileImgUrl}" style="width: 400px;height: 300px;">
            </div>
        <div class="c5">当前竞价状态：<span style="color: red">${y.bidStatus}</span> &ensp; 当前竞价模式：<span style="color: red">${y.trad}</span>
            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
            <div>最高报价&ensp;<span style="color: red">${y.closePrice}元</span></div>
            <br>
            <div>最低报价&ensp;<span style="color: red">${y.startPrice}元</span></div>
            <br>
            <div>距结束&ensp;&ensp;00天00时04分57.7秒</div>
            <br>
            <img src="/images/chujia.png">
            <img src="/images/baojia.png">&ensp;&ensp;<img src="/images/youxian.png">
            &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;
            <div>
                <span>底&ensp;&ensp;价:￥<span style="color: red">${y.startPrice}</span></span>&ensp;&ensp;&ensp;<span>加价幅度:￥<span style="color: red">${y.quoteIncrement}</span></span>&ensp;&ensp;&ensp;<span>&ensp;&ensp;&ensp;&ensp;开始时间:<span style="color: red">${y.bidStartTime}</span></span>
            </div>
            <div>
                <span>保证金:￥<span style="color: red">${y.cmcostAmount}</span></span>&ensp;&ensp;&ensp;<span>自由竞价周期:<span style="color: red">${y.freeBidLen}</span>秒</span>&ensp;&ensp;&ensp;<span>优先购买权人<img src="/images/you.png">:<span style="color: red">${y.priorityEnterName}</span></span>
            </div>
            <div>
                <span>升值率:<span style="color: red">${y.upRate}</span>%</span>&ensp;&ensp;&ensp;<span>延时竞价周期:<span style="color: red">${y.delayBidLen}</span>秒</span>
            </div>
            &ensp;&ensp;&ensp;
            <div>竞价规则：至少一人报名且出价不能低于起拍价，方可交易</div>
            &ensp;&ensp;&ensp;
            <div>联系咨询方式：台州市公共资源交易中心</div>
        </div>

    </div>
    </c:forEach>
</div>
</body>
</html>
