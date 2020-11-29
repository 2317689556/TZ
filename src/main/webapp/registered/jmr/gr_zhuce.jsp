<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <style>
        .xid {
            color: red;
        }
        .spid {
            color: red;
        }
        #a_{
            text-decoration: none;
            color: #000;
        }
    </style>
</head>
<body>
<div style="margin:70px;margin-right: 300px">
    <form method="post" class="form-horizontal" id="asd">
        <div class="form-group" style="margin:50px;margin-left: 770px;">
            <h3><span class="sid">—</span>&nbsp;&nbsp;个人注册信息填写&nbsp;&nbsp;<span class="sid">—</span></h3>
            <br>
            <h4><span class="xid">报名须知：请如实填写报名信息,以便报名资料审核顺利通过</span></h4>
        </div>

        <div class="form-group">
            <label class="col-xs-6 control-label">个人名称<span class="spid">*</span>：</label>
            <div class="col-xs-6">
                <input type="text" class="form-control" name="userName" style="width: 252px">
            </div>
        </div>

        <div class="form-group">
            <label class="col-xs-6 control-label">账号<span class="spid">*</span>：</label>
            <div class="col-xs-6">
                <input type="text" class="form-control" name="passid" style="width: 252px">
            </div>
        </div>

        <div class="form-group">
            <label class="col-xs-6 control-label">身份证号码<span class="spid">*</span>：</label>
            <div class="col-xs-6">
                <input type="text" class="form-control" name="userIdcard" style="width: 252px">
            </div>
        </div>

        <div class="form-group">
            <label class="col-xs-6 control-label">登录密码<span class="spid">*</span>：</label>
            <div class="col-xs-6">
                <input type="password" class="form-control" name="password" style="width: 252px">
            </div>
        </div>

        <div class="form-group">
            <label class="col-xs-6 control-label">联系号码<span class="spid">*</span>：</label>
            <div class="col-xs-6">
                <input type="text" class="form-control" name="userPhone" style="width: 252px">
            </div>
        </div>

        <div class="form-group">
            <label class="col-xs-6 control-label">银行账号<span class="spid">*</span>：</label>
            <div class="col-xs-6">
                <input type="text" class="form-control" name="userBankAccount" style="width: 252px">
            </div>
        </div>

        <div class="form-group">
            <label class="col-xs-6 control-label">账户名<span class="spid">*</span>：</label>
            <div class="col-xs-6">
                <input type="text" class="form-control" name="userBankName" style="width: 252px">
            </div>
        </div>

        <div class="form-group" style="margin-left: 615px;margin-top: 30px">
            <div class="col-xs-offset-3 col-xs-3">
                <button type="button" class="btn btn-default" id="addgr">确定</button>
                <button type="submit" class="btn btn-default"><a href="/registered/registered.jsp" target="_top" id="a_">返回</a></button>
            </div>
        </div>
    </form>
</div>
</body>
<script>
    $(function () {
        $("#addgr").click(function () {
            var userName = $("input[name=userName]");//用户姓名
            var passid = $("input[name=passid]");//用户姓名
            var userIdcard = $("input[name=userIdcard]");//身份证号码
            var password = $("input[name=password]");//密码
            var userPhone = $("input[name=userPhone]");//用户电话
            var userBankAccount = $("input[name=userBankAccount]");//银行卡号
            var userBankName = $("input[name=userBankName]");//用户银行账户名

            if (!userName.val()) {
                isError(userName);
                return false;
            }
            isOk(userName);


            if (!passid.val()) {
                isError(passid);
                return false;
            }
            isOk(passid);


            var ravvv = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
            if (!ravvv.test(userIdcard.val())) {
                isError(userIdcard);
                return false;
            }
            isOk(userIdcard);


            var ravv = /^[\S]{6,12}$/;
            if (!ravv.test(password.val())) {
                isError(password);
                return false;
            }
            isOk(password);


            var ravvvv = /^1[0-9]{10}/;
            if (!ravvvv.test(userPhone.val())) {
                isError(userPhone);
                return false;
            }
            isOk(userPhone);


            if (!userBankAccount.val()) {
                isError(userBankAccount);
                return false;
            }
            isOk(userBankAccount);


            if (!userBankName.val()) {
                isError(userBankName);
                return false;
            }
            isOk(userBankName);


            var data = new FormData($("#asd")[0]);
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/cjl/gradd",
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
