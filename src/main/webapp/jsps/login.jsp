<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>台州前台系统 登录</title>
    <script type="text/javascript" src="/js/jquery.js"></script>
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
            <form id="infoForm" method="post">
                <input type="text" id="passid" placeholder="用户名" name="passid">
                <input type="password"  id="password" placeholder="密码" name="password">
                <button type="button" class="signIn t25 border_5" id="login">登录</button>
                <br>
                <br>
                <a href="/jsps/firstpage.jsp" target="_top">返回首页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/registered/registered.jsp" target="_top">注册</a>
            </form>
        </div>
    </div>
</div>
<img src="/images/背景.png" width="100%" height="100%" />





<script>
    $(function(){
        $("#login").click(function(){
            var passid=$("#passid").val();
            var password=$("#password").val();
            $.ajax({
                url:'${pageContext.request.contextPath}/yhy/login',
                type:'post',
                dataType:'json',
                data:{passid:passid,password:password},
                success:function(data){
                    if(data){
                        alert("登陆成功!");
                        window.location.href="${pageContext.request.contextPath}/jsps/firstpage.jsp";
                    }else{
                        alert("用户名或密码错误!");
                    }
                }
            });
        });
    });
</script>
</body>
</html>