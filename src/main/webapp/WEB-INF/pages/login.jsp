<%--
  Created by IntelliJ IDEA.
  User: Nikolay
  Date: 19.11.2016
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="index.jsp"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<div class="container">
    <div class="main">
        <div class="panel-heading">
            <div class="panel-title text-center">
                <h1 class="title">Innopolis Taxi &trade;</h1>
                <hr />
            </div>
        </div>
        <div class="main-login main-center">
            <c:if test="${not empty requestScope.message}">
                <div class="alert alert-danger fade in">
                    <a href="#" class="close" data-dismiss="alert">&times;</a>
                    <strong>Error!</strong> ${message}
                </div>
            </c:if>
            <form class="form-horizontal" method="post" action="j_spring_security_check">
                <div class="form-group">
                    <label for="username" class="cols-sm-2 control-label">Login</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
                            <input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Login" required/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="cols-sm-2 control-label">Password</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                            <input type="password" class="form-control" name="password" id="password"  placeholder="Enter your Password" required/>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </div>
                    </div>
                </div>
                <div class="form-group ">
                    <button type="submit" class="btn btn-primary btn-lg btn-block login-button">Login</button>
                </div>
                <div class="login-register">
                    <a href="register">Register</a>
                </div>
            </form>
        </div>
    </div>
</div>
