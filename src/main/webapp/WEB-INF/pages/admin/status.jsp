<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Nikolay
  Date: 08.12.2016
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div id="page-wrapper">
    <%@include file="./index.jsp"%>
    <!-- /.row -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Status table <small>Statistics Overview</small>
                </h1>
                <ol class="breadcrumb">
                    <li class="active">
                        <i class="fa fa-dashboard"></i> Status table
                    </li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <table id="status" class="display" cellspacing="0" width="100%">
                    <thead>
                    <tr>
                        <th>#ID</th>
                        <th>NAME</th>
                        <th>CLASS NAME</th>
                        <th>MESSAGE</th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <th>#ID</th>
                        <th>NAME</th>
                        <th>CLASS NAME</th>
                        <th>MESSAGE</th>
                    </tr>
                    </tfoot>
                    <tbody>
                    <c:forEach items="${statusList}" var="element">
                        <tr>
                            <td>${element.id}</td>
                            <td>${element.name}</td>
                            <td>${element.className}</td>
                            <td>${element.message}</td>
                            <td><a class="btn btn-warning" href="/admin/status/edit/${element.id}" role="button">Edit</a></td>
                            <td><a class="btn btn-danger" href="/admin/status/delete/${element.id}" role="button">delete</a></td>
                        </tr>
                    </c:forEach>
                    <tr class="table-success">
                        <form:form method="POST" action="/admin/status/add" modelAttribute="status">
                            <td>Add status</td>
                            <td hidden>
                                <form:label path="id">ID</form:label>
                                <form:input path="id" readonly="true"/>
                            </td>
                            <td hidden>
                                <form:label path="version">Version</form:label>
                                    <form:input path="version" readonly="true"/>
                                </tdhidden>
                            <td>
                                <form:label path="name">Name</form:label>
                                <form:input path="name"/>
                            </td>
                            <td>
                                <form:label path="className">Class name</form:label>
                                <form:input path="className"/>
                            </td>
                            <td>
                                <form:label path="message">Message</form:label>
                                <form:input path="message"/>
                            </td>
                            <td>
                                <input class="btn btn-primary" type="submit" value="Confirm"/>
                            </td>
                        </form:form>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>