<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <style>
        .xid {
            color: red;
        }
    </style>
</head>
<body background="/images/背景.png">
<div style="margin:150px;margin-left: 700px">
    <form class="layui-form" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">个人名称<span class="xid">*</span>：</label>
            <div class="layui-input-block">
                <input type="text" name="title" placeholder="请输入个人名称" class="layui-input" style="width: 30%">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">身份证号码<span class="xid">*</span>：</label>
            <div class="layui-input-block">
                <input type="text" name="title" placeholder="请输入身份证号码" class="layui-input" style="width: 30%">
                <span class="xid">该号码为您的竞价系统的登录用户名</span>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">登录密码<span class="xid">*</span>：</label>
            <div class="layui-input-block">
                <input type="text" name="title" placeholder="请输入登录密码" class="layui-input" style="width: 30%">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">请确认登录密码<span class="xid">*</span>：</label>
            <div class="layui-input-block">
                <input type="text" name="title" placeholder="请确认登录密码" class="layui-input" style="width: 30%">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">联系号码<span class="xid">*</span>：</label>
            <div class="layui-input-block">
                <input type="text" name="title" placeholder="请输入联系号码" class="layui-input" style="width: 30%">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">银行账号：</label>
            <div class="layui-input-block">
                <input type="text" name="title" placeholder="请输入银行账号" class="layui-input" style="width: 30%">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">账户名：</label>
            <div class="layui-input-block">
                <input type="text" name="title" placeholder="请输入账户名" class="layui-input" style="width: 30%">
                <span class="xid">该银行账号将用于您的保证金缴纳,<br>缴纳保证金时请确保与银行账号一致</span>
            </div>
        </div>


        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">提交资料</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                <button type="reset" class="layui-btn layui-btn-primary"><a href="jmr_registered.jsp">关闭</a></button>
            </div>
        </div>
    </form>
</div>
</body>
</html>