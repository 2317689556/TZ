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
<div style="margin:70px;margin-left: 500px;">
    <form method="post" class="form-horizontal" id="asd">
        <div class="form-group" style="margin:50px;margin-left: 240px;">
            <h3><span class="sid">—</span>&nbsp;&nbsp;委托人注册信息填写&nbsp;&nbsp;<span class="sid">—</span></h3>
            <br>
            <h4><span class="xid">报名须知：请如实填写报名信息,以便报名资料审核顺利通过</span></h4>
        </div>
        <table>
            <tr>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">单位名称<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="clUnitName">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">联系人手机号<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="clPhone">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">社会信用(组织机构)代码证<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="passid">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">法人姓名<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="clFrName">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">登录密码<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="password" class="form-control" name="password">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">法人身份证<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="clFrIdCard">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">法人手机号<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="clFrphone">
                        </div>
                    </div>
                </td>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">单位地址<span class="spid">*</span>：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" name="clAddress">
                        </div>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="form-group">
                        <label class="col-xs-6 control-label">验证码：</label>
                        <div class="col-xs-6">
                            <input type="text" class="form-control" id="codestext" name="codestext">
                            <img id="authImg" src="/cjl/autoImage" style="height: 26px;width: 70px;"/>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <div class="form-group" style="margin-left: 360px;margin-top: 60px">
            <div class="col-xs-offset-3 col-xs-3">
                <button type="button" class="btn btn-default" id="addwtr">确定</button>
                <button type="submit" class="btn btn-default"><a href="/registered/registered.jsp" target="_top"
                                                                 id="a_">返回</a></button>
            </div>
        </div>
    </form>
</div>
</body>
<script>
    $(function () {
        $("#addwtr").click(function () {
            var clUnitName = $("input[name=clUnitName]");//单位名
            var clPhone = $("input[name=clPhone]");//联系人手机号
            var passid = $("input[name=passid]");//代码
            var clFrName = $("input[name=clFrName]");//法人姓名
            var password = $("input[name=password]");//登录密码
            var clFrIdCard = $("input[name=clFrIdCard]");//法人身份证
            var clFrphone = $("input[name=clFrphone]");//法人手机号
            var clAddress = $("input[name=clAddress]");//单位地址

            if (!clUnitName.val()) {
                isError(clUnitName, "单位名不能为空");
                return false;
            }
            isOk(clUnitName);


            var rav = /^1[0-9]{10}/;
            if (!rav.test(clPhone.val())) {
                isError(clPhone, "手机号格式有误");
                return false;
            }
            isOk(clPhone);


            if (!passid.val()) {
                isError(passid, "代码证不能为空");
                return false;
            }
            isOk(passid);


            if (!clFrName.val()) {
                isError(clFrName, "名字不能为空");
                return false;
            }
            isOk(clFrName);


            var ravv = /^[\S]{6,12}$/;
            if (!ravv.test(password.val())) {
                isError(password, "密码格式为6位以上,12位以下");
                return false;
            }
            isOk(password);


            var ravvv = /^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$|^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}([0-9]|X)$/;
            if (!ravvv.test(clFrIdCard.val())) {
                isError(clFrIdCard, "身份证号码有误");
                return false;
            }
            isOk(clFrIdCard);


            var ravvvv = /^1[0-9]{10}/;
            if (!ravvvv.test(clFrphone.val())) {
                isError(clFrphone, "手机号格式有误");
                return false;
            }
            isOk(clFrphone);


            if (!clAddress.val()) {
                isError(clAddress, "地址不能为空");
                return false;
            }
            isOk(clAddress);


            var data = new FormData($("#asd")[0]);
            $.ajax({
                type: "post",
                url: "${pageContext.request.contextPath}/cjl/wtradd",
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