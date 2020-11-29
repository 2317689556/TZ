<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        .xid {
            color: red;
        }
        .spid {
            color: red;
        }
        #a_ {
            text-decoration: none;
            color: #000;
        }
    </style>
</head>
<body>
<div style="margin:70px;margin-left: 400px;">
    <form method="post" class="form-horizontal" id="asd">
        <div class="form-group" style="margin:50px;margin-left: 420px;">
            <h3><span class="sid">—</span>&nbsp;&nbsp;企业注册信息填写&nbsp;&nbsp;<span class="sid">—</span></h3>
            <br>
            <h4><span class="xid">报名须知：请如实填写报名信息,以便报名资料审核顺利通过</span></h4>
        </div>
        <table>
            <tr>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">企业名称<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="epQyname" style="width: 252px">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">联系人姓名<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="epName" style="width: 252px">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">社会信用(组织机构)代码证<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="passid" placeholder="该号码为您的竞价系统的登录用户名" style="width: 252px">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">联系人手机号<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="epPhone" style="width: 252px">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">登录密码<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="password" class="form-control" name="password" style="width: 252px">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">联系人身份证<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="epContactsIdCard" style="width: 252px">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">银行账号<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="epBankAccount" style="width: 252px">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">企业地址<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="epAddress" style="width: 252px">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">账户名<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="epBankName" style="width: 252px"
                                   placeholder="该银行账号将用于您的保证金缴纳,缴纳保证金时请确保银行账号一致">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">法人姓名<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="epFrName" style="width: 252px">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">验证码：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" id="codestext" name="codestext" style="width: 252px">
                            <img id="authImg" src="/cjl/autoImage"/>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="form-group" style="height: 80px">
                        <label class="col-xs-6 control-label">法人身份证<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="epFrIdCard" style="width: 252px">
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <div class="form-group" style="margin-left: 615px;margin-top: 30px">
            <div class="col-xs-offset-3 col-xs-3">
                <button type="button" class="btn btn-default" id="addqy">确定</button>
                <button type="submit" class="btn btn-default"><a href="/registered/registered.jsp" target="_top" id="a_">返回</a></button>
            </div>
        </div>
    </form>
</div>
</body>
<script>
    $(function () {
        $("#addqy").click(function () {
            var epQyname = $("input[name=epQyname]");//企业名称
            var epName = $("input[name=epName]");//联系人姓名
            var passid = $("input[name=passid]");//社会信用代码证
            var epPhone = $("input[name=epPhone]");//联系人手机号
            var password = $("input[name=password]");//企业密码
            var epContactsIdCard = $("input[name=epContactsIdCard]");//联系人身份证
            var epBankAccount = $("input[name=epBankAccount]");//银行账号
            var epAddress = $("input[name=epAddress]");//企业地址
            var epBankName = $("input[name=epBankName]");//账户名
            var epFrName = $("input[name=epFrName]");//法人姓名
            var epFrIdCard = $("input[name=epFrIdCard]");//法人身份证

            if (!epQyname.val()) {
                isError(epQyname);
                return false;
            }
            isOk(epQyname);


            if (!epName.val()) {
                isError(epName);
                return false;
            }
            isOk(epName);


            if (!passid.val()) {
                isError(passid);
                return false;
            }
            isOk(passid);


            var rav = /^1[0-9]{10}/;
            if (!rav.test(epPhone.val())) {
                isError(epPhone);
                return false;
            }
            isOk(epPhone);


            var ravv = /^[\S]{6,12}$/;
            if (!ravv.test(password.val())) {
                isError(password);
                return false;
            }
            isOk(password);


            var ravvv = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
            if (!ravvv.test(epContactsIdCard.val())) {
                isError(epContactsIdCard);
                return false;
            }
            isOk(epContactsIdCard);


            if (!epBankAccount.val()) {//银行卡
                isError(epBankAccount);
                return false;
            }
            isOk(epBankAccount);


            if (!epAddress.val()) {
                isError(epAddress);
                return false;
            }
            isOk(epAddress);


            if (!epBankName.val()) {
                isError(epBankName);
                return false;
            }
            isOk(epBankName);


            if (!epFrName.val()) {
                isError(epFrName);
                return false;
            }
            isOk(epFrName);


            var ravvvv = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
            if (!ravvvv.test(epFrIdCard.val())) {
                isError(epFrIdCard);
                return false;
            }
            isOk(epFrIdCard);


            var data = new FormData($("#asd")[0]);
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/cjl/qyadd",
                data: data,
                datatype: "json",
                processData: false,
                contentType: false,
                success: function (data) {
                    if (data) {
                        window.location.href="/jsps/login.jsp"
                    } else {
                        alert("失败");
                    }
                }
            });
        });
    });


    function isOk(obj, text) {
        obj.parent().parent().removeClass("has-error");
        obj.parent().parent().addClass("has-success");
        obj.parent().next().children(":first").html(text);
    }

    function isError(obj, text) {
        obj.parent().parent().removeClass("has-success");
        obj.parent().parent().addClass("has-error");
        obj.parent().next().children(":first").html(text);
    }

/*----------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
    $(function () {
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