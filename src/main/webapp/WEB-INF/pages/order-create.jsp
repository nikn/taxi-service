<%--
  Created by IntelliJ IDEA.
  User: Nikolay
  Date: 01.12.2016
  Time: 0:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="index.jsp"%>
<div class="container">
    <div class="main">
        <div class="panel-heading">
            <div class="panel-title text-center">
                <h1 class="title">Innopolis Taxi &trade;</h1>
                <hr />
                <h1 class="title">Create order</h1>
            </div>
        </div>
        <div class="main-login main-center">
            <form class="form-horizontal" method="post" action="/order/create" role="form" data-toggle="validator" id="order_form">
                <c:if test="${not empty requestScope.message}">
                    <div class="alert alert-danger">
                            ${message}
                    </div>
                </c:if>
                <div class="form-group">
                    <label class="row flex-items-xs-center control-label">Source place</label>
                    <div class="row flex-items-xs-center">
                        <div class="cols-xs-6">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input type="number" step="any" maxlength="15" class="form-control" name="src_lat" id="src_lat"  placeholder="Enter latitude" required/>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="cols-xs-6">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input type="number" step="any" maxlength="15" class="form-control" name="src_long" id="src_long"  placeholder="Enter your longitude" required/>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="row flex-items-xs-center control-label">Destination place</label>
                    <div class="row flex-items-xs-center">
                        <div class="cols-xs-6">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input type="number" step="any" maxlength="15" class="form-control" name="dst_lat" id="dst_lat"  placeholder="Enter latitude" required/>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="cols-xs-6">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input type="number" step="any" maxlength="15" class="form-control" name="dst_long" id="dst_long"  placeholder="Enter your longitude" required/>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group ">
                    <button type="submit" class="btn btn-primary btn-lg btn-block login-button">Confirm</button>
                </div>
            </form>
        </div>
    </div>
</div>