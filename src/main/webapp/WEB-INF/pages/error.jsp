<%--
  Created by IntelliJ IDEA.
  User: Nikolay
  Date: 10.12.2016
  Time: 8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="index.jsp"%>
<div class="container">
    <h1>Error Page</h1>
    <p>Application has encountered an error. Please contact support on ...</p>

    <!--
    Failed URL: ${url}
    Exception:  ${exception.message}
        <c:forEach items="${exception.stackTrace}" var="ste">    ${ste}
    </c:forEach>
  -->
</div>