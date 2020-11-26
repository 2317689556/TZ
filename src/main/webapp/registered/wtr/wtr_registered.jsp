<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>台州前台系统 委托人注册</title>
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <style>
        .xid {
            color: red;
        }
        .sid{
            color: #FF00FF;
        }
    </style>
</head>
<body background="/images/背景.png">
<div style="margin:90px;margin-left: 600px;">
    <form class="layui-form" action="">
        <div class="layui-form-item" style="margin:50px;margin-left: 220px;">
            <h1><span class="sid">—</span>&nbsp;&nbsp;委托人注册信息填写&nbsp;&nbsp;<span class="sid">—</span></h1>
            <br>
            <h3><span class="xid">报名须知：请如实填写报名信息,以便报名资料审核顺利通过</span></h3>
        </div>
        <table>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">单位名称<span class="xid">*</span>：</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" placeholder="请输入单位名称" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">联系人手机号<span class="xid">*</span>：</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" placeholder="请输入联系人手机号" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>
			<tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">社会信用(组织机构)代码证<span class="xid">*</span>：</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" placeholder="请输入社会信用代码证" class="layui-input">
                            <span class="xid">该号码为您的竞价系统的登录用户名</span>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">法人姓名<span class="xid">*</span>：</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" placeholder="请输入法人姓名" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>
			<tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">登录密码<span class="xid">*</span>：</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" placeholder="请输入登录密码" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">法人身份证<span class="xid">*</span>：</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" placeholder="请输入法人身份证" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>
			<tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">请再次输入登录密码<span class="xid">*</span>：</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" placeholder="请再次输入登录密码" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">法人手机号：</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" placeholder="请输入法人手机号" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>
			<tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">单位地址<span class="xid">*</span>：</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" placeholder="请输入单位地址" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">验证码<span class="xid">*</span>：</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" placeholder="请输入验证码" class="layui-input" style="width: 70%">
                        </div>
                    </div>
                </td>
            </tr>
			<tr>
				<td>
                    <br>
                    <br>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">提交资料</button>
							<button type="reset" class="layui-btn layui-btn-primary">重置</button>
							<button type="reset" class="layui-btn layui-btn-primary"><a href="/registered/registered.jsp">关闭</a></button>
						</div>
					</div>
				</td>
			</tr>
        </table>
    </form>
</div>
</body>
</html>