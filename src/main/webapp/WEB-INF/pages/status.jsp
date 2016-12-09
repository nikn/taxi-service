<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  Profile: Nikolay
  Date: 05.12.2016
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="index.jsp"%>
<div class="container">
    <form:form method="POST" action="/addStatus" modelAttribute="status">
        <%--<table>--%>
            <%--<tr>--%>
                <td><form:label path="name">Name</form:label></td>
                <td><form:input path="name"/></td>
            <%--</tr>--%>
            <%--<tr>--%>
                <td><form:label path="className">Class name</form:label></td>
                <td><form:input path="className"/></td>
            <%--</tr>--%>
           <%--<tr>--%>
                <td><input type="submit" value="Submit"/></td>
            <%--</tr>--%>
        <%--</table>--%>
    </form:form>
</div>
