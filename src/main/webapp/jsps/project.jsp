<%--
  Created by IntelliJ IDEA.
  User: 冯朝阳
  Date: 2020/11/26
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>工程交易</title>
    <link rel="stylesheet" href="/css/style1.css">
</head>
<body>
<c:import url="toubu.jsp"/>
<c:import url="daohang.jsp"/>

<div class="contenedorCards">
<c:forEach items="${list}" var="p">
    <div class="card">
        <div class="wrapper">
            <div class="colorProd"></div>
            <div class="imgProd" style="background:url(${p.fileImgUrl}) 100% 0 no-repeat;"></div>
            <div class="infoProd">
<%--                <p class="nombreProd">${p.seqId}</p>--%>
                <p class="nombreProd">${p.objectName}</p>
                <p class="nombreProd">当前价：${p.showCurrentPrice}</p>
                <p class="nombreProd">预估价：${p.showEstimatedPrice}</p>
                <p class="extraInfo">预计${p.showEstimate}结束</p>
                <div class="actions">
                    <div class="preciosGrupo">
                        <p class="precio precioProd">${p.showLook}次围观</p>
                        <p class="precio precioProd">${p.showSignUp}人报名</p>
                    </div>
                    <div class="icono action aFavs">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                            <path d="M47 5c-6.5 0-12.9 4.2-15 10-2.1-5.8-8.5-10-15-10A15 15 0 0 0 2 20c0 13 11 26 30 39 19-13 30-26 30-39A15 15 0 0 0 47 5z">
                            </path>
                        </svg>
                    </div>
                    <div class="icono action alCarrito">
                        <svg class="inCart" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                            <title>Quitar del carrito</title>
                            <path d="M30 22H12M2 6h6l10 40h32l3.2-9.7"></path>
                            <circle cx="20" cy="54" r="4"></circle>
                            <circle cx="46" cy="54" r="4"></circle>
                            <circle cx="46" cy="22" r="16"></circle>
                            <path d="M53 18l-8 9-5-5"></path>
                        </svg>
                        <svg class="outCart" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 64 64">
                            <title>Agregar al carrito</title>
                            <path d="M2 6h10l10 40h32l8-24H16"></path>
                            <circle cx="23" cy="54" r="4"></circle>
                            <circle cx="49" cy="54" r="4"></circle>
                        </svg>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
</div>

<script src="/js/jquery-3.4.1.min.js"></script>
<script src="/js/script.js"></script>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">
    <p>适用浏览器：Chrome、FireFox、360、搜狗、Opera、傲游. 不支持Windows版Safari、IE8及以下浏览器。</p>
    <p>来源：<a href="http://sc.chinaz.com/" target="_blank">站长素材</a></p>
</div>

</body>

</html>
