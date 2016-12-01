<%--
  Created by IntelliJ IDEA.
  User: Nikolay
  Date: 30.11.2016
  Time: 9:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="index.jsp"%>
<script src="//api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
<spring:url value="/resources/js/map.location.js" var="mapLocation" />
<script src="${mapLocation}"></script>
<style>
    body, html {
        padding: 0;
        margin: 0;
        width: 100%;
        height: 100%;
    }
    #map {
        width: 100%;
        height: 90%;
    }
</style>
<div class="container">
    <h3>My Google Maps Demo</h3>
    <div id="map"></div>

</div>
