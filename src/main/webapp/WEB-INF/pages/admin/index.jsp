<%--
  Created by IntelliJ IDEA.
  User: Nikolay
  Date: 06.12.2016
  Time: 10:42
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
    <spring:url value="/resources/css/admin-main.css" var="mainCss" />
    <spring:url value="/resources/css/jquery.dataTables.min.css" var="dataTablesCss" />
    <spring:url value="/bootstrap/css/bootstrap.min.css" var="bootstrapCss"/>
    <spring:url value="/bootstrap/css/bootstrap-flex.min.css" var="bootstrapFlexCss"/>


    <spring:url value="/resources/js/jquery.min.js" var="jqueryJs"/>
    <spring:url value="/resources/js/jquery.dataTables.min.js" var="dataTablesJs"/>
    <spring:url value="/bootstrap/js/bootstrap.min.js" var="bootstrapJs"/>
    <spring:url value="/resources/js/admin.main.js" var="mainJs" />
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

<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-dark bg-inverse navbar-fixed-top">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button class="navbar-toggler hidden-sm-up pull-sm-right" type="button" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                ☰
            </button>
            <a class="navbar-brand" href="/admin">Admin Page</a>
        </div>
        <div class="collapse navbar-collapse navbar-toggleable-sm navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav list-group">
                <li class="list-group-item">
                    <a href="/admin/orders"><i class="fa fa-fw fa-dashboard"></i> Orders</a>
                </li>
                <li class="list-group-item">
                    <a href="/admin/users"><i class="fa fa-fw fa-bar-chart-o"></i> Users</a>
                </li>
                <li class="list-group-item">
                    <a href="/admin/status"><i class="fa fa-fw fa-table"></i> Status table</a>
                </li>
                <%--<li class="list-group-item">--%>
                    <%--<a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i></a>--%>
                    <%--<ul id="demo" class="list-group collapse">--%>
                        <%--<li class="list-group-item">--%>
                            <%--<a href="javascript:;">Dropdown Item</a>--%>
                        <%--</li>--%>
                        <%--<li class="list-group-item">--%>
                            <%--<a href="javascript:;">Dropdown Item</a>--%>
                        <%--</li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>
<!-- /#wrapper -->
</body>
</html>