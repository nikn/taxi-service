<%--
  Created by IntelliJ IDEA.
  User: Nikolay
  Date: 30.11.2016
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="index.jsp"%>

<div class="container">
    <table id="orders" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
        <tr>
            <th>#</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Source place</th>
            <th>Destination place</th>
            <th>Status</th>
            <th>Create Time</th>
            <th>Modify Time</th>

        </tr>
        </thead>
        <tfoot>
        <tr>
            <th>#</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Source place</th>
            <th>Destination place</th>
            <th>Status</th>
            <th>Create Time</th>
            <th>Modify Time</th>
        </tr>
        </tfoot>
        <tbody>
        <c:set var="count" value="1" scope="page" />
        <c:forEach items="${orders}" var="order">
            <tr class="table-${order.orderStatus.className}">
                <td>${count}</td>
                <td>${order.user.firstName}</td>
                <td>${order.user.lastName}</td>
                <td>[${order.srcLat}, ${order.srcLong}]</td>
                <td>[${order.dstLat}, ${order.dstLong}]</td>
                <td>${order.orderStatus.name}</td>
                <td>${order.createTime}</td>
                <td>${order.modifyTime}</td>
                <td>
                    <a href="#" class="btn btn-outline-danger">Cancel</a>
                </td>
            </tr>
            <c:set var="count" value="${count + 1}" scope="page"/>
        </c:forEach>
        </tbody>
    </table>
</div>
