<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>台州前台系统 登录</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
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
            <input type="text" id="inputEmail3" placeholder="用户名" name="username">
            <input type="password"  id="inputPassword3" placeholder="密码" name="password">
                <button type="submit" id="entry_btn">登录</button>
                <br>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/registered/registered.jsp" target="_top">注册</a>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript">
   /* $(function(){
        Victor("container", "output");   //登陆背景函数
        $("#entry_name").focus();
        $(document).keydown(function(event){
            if(event.keyCode==13){
                $("#entry_btn").click();
            }
        });
    });*/
   $("#entry_btn").click(function(){
       var username=$("#username").val();
       var password=$("#password").val();
       $.ajax({
           type:"post",
           url:"${pageContext.request.contextPath}/login/LoginUser",
           dataType:"json",
           data:{username:username,password:password},
           success:function(data){
               if(data){
                   window.location.href="${pageContext.request.contextPath}/jsps/index.jsp";
               }else{
                   alert("账号或密码错误!")
               }
           }
       });
   });
</script>
<img src="/img/背景.png" width="100%" height="100%" />
</body>
</html>