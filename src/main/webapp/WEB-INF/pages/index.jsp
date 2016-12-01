<%--
  Created by IntelliJ IDEA.
  User: Nikolay
  Date: 18.11.2016
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
  <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta http-equiv="x-ua-compatible" content="ie=edge">
      <spring:url value="/resources/css/main.css" var="mainCss" />
      <spring:url value="/resources/css/jquery.dataTables.min.css" var="dataTablesCss" />
      <spring:url value="/bootstrap/css/bootstrap.min.css" var="bootstrapCss"/>
      <spring:url value="/bootstrap/css/bootstrap-flex.min.css" var="bootstrapFlexCss"/>


      <spring:url value="/resources/js/jquery.min.js" var="jqueryJs"/>
      <spring:url value="/resources/js/jquery.dataTables.min.js" var="dataTablesJs"/>
      <spring:url value="/bootstrap/js/bootstrap.min.js" var="bootstrapJs"/>
      <spring:url value="/resources/js/main.js" var="mainJs" />
      <spring:url value="/tether/js/tether.min.js" var="tetherJs"/>

      <link href="${mainCss}" rel="stylesheet" />
      <link href="${dataTablesCss}" rel="stylesheet" />
      <link href="${bootstrapCss}" rel="stylesheet" />
      <link href="${bootstrapFlexCss}" rel="stylesheet" />
      <script src="${jqueryJs}"></script>
      <script src="${tetherJs}"></script>
      <script src="${dataTablesJs}"></script>
      <script src="${bootstrapJs}"></script>
      <script src="${mainJs}"></script>
      <title>${title}</title>
  </head>
  <body>
  <nav class="navbar navbar-dark bg-inverse">
      <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"></button>
      <div class="collapse navbar-toggleable-md" id="navbarResponsive">
          <a class="navbar-brand" href="/">Innopolis taxi &trade;</a>
          <ul class="nav navbar-nav">
              <c:if test="${not empty sessionScope.username}">
                  <li class="nav-item">
                      <a class="nav-link" href="/order/all">Orders</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="/order/create">Create new order</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="/order/map">Map</a>
                  </li>
              </c:if>
          </ul>
          <ul class="nav navbar-nav float-lg-right">
              <c:choose>
              <c:when test="${empty sessionScope.username}">
                <li class="nav-item">
                    <a class="nav-link" href="/login">
                        Login</a></li>
                <li class="nav-item">
                    <a class="nav-link" href="/register">Register</a>
                </li>
              </c:when>
              <c:otherwise>
                <li class="nav-item">
                    <a class="nav-link" href="/profile">Profile ${sessionScope.username}</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/logout">Logout</a>
                </li>
              </c:otherwise>
              </c:choose>
          </ul>
      </div>
      <%--<div class="container-fluid">--%>
          <%--<div class="navbar-header">--%>
              <%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">--%>
                  <%--<span class="sr-only">Toggle navigation</span>--%>
                  <%--<span class="icon-bar"></span>--%>
                  <%--<span class="icon-bar"></span>--%>
                  <%--<span class="icon-bar"></span>--%>
              <%--</button>--%>
              <%--<a class="navbar-brand" href="/">Innopolis taxi &trade;</a>--%>
          <%--</div>--%>
          <%--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">--%>
              <%--<ul class="nav navbar-nav navbar-right">--%>
                  <%--<c:choose>--%>
                      <%--<c:when test="${empty sessionScope.username}">--%>
                          <%--<li><a href="/login">Login</a></li>--%>
                          <%--<li><a href="/register">Register</a></li>--%>
                      <%--</c:when>--%>
                      <%--<c:otherwise>--%>
                          <%--<li><a href="/profile">Profile ${sessionScope.username}</a></li>--%>
                          <%--<li><a href="/order/all">Orders</a></li>--%>
                          <%--<li><a href="/order/create">Create new order</a></li>--%>
                          <%--<li><a href="/logout">Logout</a></li>--%>
                      <%--</c:otherwise>--%>
                  <%--</c:choose>--%>
              <%--</ul>--%>
          <%--</div>--%>
      <%--</div>--%>
  </nav>
  </body>
</html>
