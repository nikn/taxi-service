<%--
  Created by IntelliJ IDEA.
  User: Nikolay
  Date: 21.11.2016
  Time: 2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="index.jsp"%>
<div class="container">
    <div class="main">
        <div class="row">
            <div class="col-sm-6">
                <img src="/resources/img/avatar.png" alt="" class="img-fluid img-rounded img-responsive" />
            </div>
            <div class="col-sm-6">
                <h4> Username : ${requestScope.user.username} </h4>
                <h4>${requestScope.user.getFirstName()} ${requestScope.user.getLastName()}</h4>
                <small>
                    <cite title="San Francisco, USA">San Francisco, USA <i class="glyphicon glyphicon-map-marker"></i>
                    </cite>
                </small>
                <p>
                    <i class="glyphicon glyphicon-envelope"></i>  e-mail: ${requestScope.user.getEmail()}
                    <br />
            </div>
        </div>
    </div>
</div>