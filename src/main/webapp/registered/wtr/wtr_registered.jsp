<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>台州前台系统 委托人注册</title>
    <script type="text/javascript" src="/js/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <style>
        .xid {
            color: red;
        }

        .sid {
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
                            <input type="text" id="lxrphone" name="phone" placeholder="请输入联系人手机号" class="layui-input">
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
                            <input type="password" id="dlmm" name="title" placeholder="请输入登录密码" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">法人身份证<span class="xid">*</span>：</label>
                        <div class="layui-input-block">
                            <input type="text" id="frID" name="title" placeholder="请输入法人身份证" class="layui-input">
                        </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">请再次输入登录密码<span class="xid">*</span>：</label>
                        <div class="layui-input-block">
                            <input type="password" id="zcdlmm" name="title" placeholder="请再次输入登录密码" class="layui-input">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="layui-form-item">
                        <label class="layui-form-label">法人手机号：</label>
                        <div class="layui-input-block">
                            <input type="text" id="frphone" name="title" placeholder="请输入法人手机号" class="layui-input">
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
                        <div class="form-group ">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="fa fa-id-card-o"></i>
                                </span>
                                <input type="text" class="form-control" id="codestext" name="codestext"
                                       style="width: 130px;">
                                <div class="input-group-addon">
                                    <img id="authImg" src="/cjl/autoImage" style="height: 26px;width: 70px;"/>
                                </div>
                            </div>
                            <span class="help-block">&nbsp;</span>
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
                            <button type="reset" class="layui-btn layui-btn-primary"><a
                                    href="/registered/registered.jsp">关闭</a></button>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
<script>

    $(function () {
        $("#lxrphone").blur(function () {
            var phone = $(this).val();
            if (!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))) {
                alert("手机号码格式有误，请重填")
            }
        });
        $("#frphone").blur(function () {
            var phone = $(this).val();
            if (!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))) {
                alert("手机号码格式有误，请重填")
            }
        });
        $("#dlmm").blur(function () {
            var password = $(this).val();
            if (!(/^\S{6,20}$/.test(password))) {
                alert("密码格式错误！密码由6-20位字母，数字和符号组合，区分大小写!")
            }
        });
        $("#zcdlmm").blur(function () {
            var password = $(this).val();
            if (!(/^\S{6,20}$/.test(password))) {
                alert("密码格式错误！密码由6-20位字母，数字和符号组合，区分大小写!")
            }
        });
        $("#frID").blur(function () {
            var frid = $(this).val();
            if (!(/^(\d{18,18}|\d{15,15}|\d{17,17}X)$/.test(frid))) {
                alert("身份证号码格式有误，请重填")
            }
        });


        //刷新校验码
        $("#authImg").click(function () {
            $(this).attr("src", "/cjl/autoImage?date=" + new Date());
        });
        //校验码的验证
        $("#codestext").blur(function () {
            var _that = $(this);
            $.ajax({
                type: "post",
                url: "/cjl/checkCodestext",
                data: {
                    "codestext": $(this).val()
                },
                dataType: "json",
                error: function (error) {
                    setError(_that, "校验码不正确!");
                }, success: function (data) {
                    if (data) {
                        setOk(_that);
                    } else {
                        setError(_that, "校验码不正确!");
                    }
                }
            });
        });
    });

    /*验证成功，调用此方法*/
    function setOk(obj) {
        var _pdiv = obj.parents().parents(".form-group");
        if (_pdiv.hasClass("has-error")) {
            _pdiv.removeClass("has-error");
        }
        _pdiv.addClass("has-success");
        obj.parents().nextAll("span.help-block").html("&nbsp;");
    }

    /*验证失败，调动此方法*/
    function setError(obj, str) {
        var _pdiv = obj.parents().parents(".form-group");
        if (_pdiv.hasClass("has-success")) {
            _pdiv.removeClass("has-success");
        }
        _pdiv.addClass("has-error");
        obj.parents().nextAll("span.help-block").html(str);
    }
</script>
</html>