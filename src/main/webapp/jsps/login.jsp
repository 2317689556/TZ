<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>台州前台系统 登录</title>
    <script type="text/javascript" src="/js/jquery-3.2.1.min.js"></script>
    <script src="/bootstrap/table/bootstrap-table.js"></script>
    <script src="/bootstrap/js/bootstrap-tab.js"></script>
    <script src="/bootstrap/js/bootstrap.js"></script>
    <script src="/bootstrap/js/bootstrap.min.js"></script>
    <script src="/js/vector.js"></script>

    <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/bootstrap/css/bootstrap-tab.css">
    <link href="/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/css/zzsc.css">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
<div id="container">
    <div id="output">
        <div class="containerT">
            <h1>台州市公共资源交易管理系统</h1>
            <br/> <br/> <br/>
            <h4>请输入用户名和密码</h4>
            <form class="form" method="post">
                <input type="text" id="userNum" placeholder="用户名" name="userNum" value="qqq">
                <input type="password"  id="userPassword" placeholder="密码" name="userPassword" value="123">
                <button type="submit" class="signIn t25 border_5" id="login_OK">登录</button>
                <br>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/registered/registered.jsp" target="_top">注册</a>
            </form>
        </div>
    </div>
</div>
<img src="/images/背景.png" width="100%" height="100%" />





<script>
    $("#login_OK").click(function(){
        var userNum=$("#userNum").val();
        var userPassword=$("#userPassword").val();
        $.ajax({
            type:"post",
            url:"${pageContext.request.contextPath}/cjl/Login",
            dataType:"json",
            data:{userNum:userNum,userPassword:userPassword},
            success:function(data){
                if(data){
                    alert("1111")
                    window.location.href="${pageContext.request.contextPath}/jsps/firstpage.jsp";
                }else{
                    alert("账号或密码错误!")
                }
            }
        });
        alert("1")
    });
</script>
</body>
</html>