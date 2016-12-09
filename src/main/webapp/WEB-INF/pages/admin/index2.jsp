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

<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-dark bg-inverse navbar-fixed-top">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button class="navbar-toggler hidden-sm-up pull-sm-right" type="button" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                ☰
            </button>
            <a class="navbar-brand" href="index.html">SB Admin BS 4</a>
        </div>
        <!-- Top Menu Items -->
        <ul class="nav navbar-nav top-nav navbar-right pull-xs-right">
            <li class="nav-item buy-now">
                <a href="http://www.strapui.com/themes/sb-admin-html-bootstrap-4/" class="btn btn-primary-outline buy-now-btn" role="button" style="padding: .375rem 1rem !important; border-color: #999;">Download Now</a>
            </li>
            <li class="dropdown nav-item">
                <!-- <div class="dropdown"> -->
                <a class="nav-link dropdown-toggle" href="javascript:;" id="dropdownMenu4" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-envelope"></i> <b class="caret"></b><span class="sr-only">(current)</span></a>
                <ul class="dropdown-menu message-dropdown">
                    <li class="dropdown-item message-preview">
                        <a href="javascript:;">
                            <div class="media">
                                        <span class="media-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                <div class="media-body">
                                    <h5 class="media-heading"><strong>John Smith</strong>
                                    </h5>
                                    <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="dropdown-item message-preview">
                        <a href="javascript:;">
                            <div class="media">
                                        <span class="media-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                <div class="media-body">
                                    <h5 class="media-heading"><strong>John Smith</strong>
                                    </h5>
                                    <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="dropdown-item message-preview">
                        <a href="javascript:;">
                            <div class="media">
                                        <span class="media-left">
                                            <img class="media-object" src="http://placehold.it/50x50" alt="">
                                        </span>
                                <div class="media-body">
                                    <h5 class="media-heading"><strong>John Smith</strong>
                                    </h5>
                                    <p class="small text-muted"><i class="fa fa-clock-o"></i> Yesterday at 4:32 PM</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur...</p>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="dropdown-item message-footer">
                        <a href="javascript:;">Read All New Messages</a>
                    </li>
                </ul>
                <!-- </div> -->
            </li>
            <li class="dropdown nav-item">
                <!-- <div class="dropdown"> -->
                <a href="javascript:;" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fa fa-bell"></i> <b class="caret"></b><span class="sr-only">(current)</span></a>
                <ul class="dropdown-menu alert-dropdown">
                    <li class="dropdown-item">
                        <a href="javascript:;">Alert Name <span class="label label-default"> Alert Badge</span></a>
                    </li>
                    <li class="dropdown-item">
                        <a href="javascript:;">Alert Name <span class="label label-primary"> Alert Badge</span></a>
                    </li>
                    <li class="dropdown-item">
                        <a href="javascript:;">Alert Name <span class="label label-success">Alert Badge</span></a>
                    </li>
                    <li class="dropdown-item">
                        <a href="javascript:;">Alert Name <span class="label label-info"> Alert Badge</span></a>
                    </li>
                    <li class="dropdown-item">
                        <a href="javascript:;">Alert Name <span class="label label-warning"> Alert Badge</span></a>
                    </li>
                    <li class="dropdown-item">
                        <a href="javascript:;">Alert Name <span class="label label-danger"> Alert Badge</span></a>
                    </li>
                    <li class="dropdown-divider"></li>
                    <li class="dropdown-item">
                        <a href="javascript:;">View All</a>
                    </li>
                </ul>
                <!-- </div> -->
            </li>
            <li class="dropdown nav-item">
                <a href="javascript:;" class="nav-link dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> John Smith <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li class="dropdown-item">
                        <a href="javascript:;"><i class="fa fa-fw fa-user"></i> Profile</a>
                    </li>
                    <li class="dropdown-item">
                        <a href="javascript:;"><i class="fa fa-fw fa-envelope"></i> Inbox</a>
                    </li>
                    <li class="dropdown-item">
                        <a href="javascript:;"><i class="fa fa-fw fa-gear"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li class="dropdown-item">
                        <a href="javascript:;"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-toggleable-sm navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav list-group">
                <li class="list-group-item">
                    <a href="index.html"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                </li>
                <li class="list-group-item">
                    <a href="charts.html"><i class="fa fa-fw fa-bar-chart-o"></i> Charts</a>
                </li>
                <li class="list-group-item">
                    <a href="tables.html"><i class="fa fa-fw fa-table"></i> Tables</a>
                </li>
                <li class="list-group-item">
                    <a href="forms.html"><i class="fa fa-fw fa-edit"></i> Forms</a>
                </li>
                <li class="list-group-item">
                    <a href="bootstrap-elements.html"><i class="fa fa-fw fa-desktop"></i> Bootstrap Elements</a>
                </li>
                <li class="list-group-item">
                    <a href="bootstrap-grid.html"><i class="fa fa-fw fa-wrench"></i> Bootstrap Grid</a>
                </li>
                <li class="list-group-item">
                    <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i></a>
                    <ul id="demo" class="list-group collapse">
                        <li class="list-group-item">
                            <a href="javascript:;">Dropdown Item</a>
                        </li>
                        <li class="list-group-item">
                            <a href="javascript:;">Dropdown Item</a>
                        </li>
                    </ul>
                </li>
                <li class="list-group-item">
                    <a href="blank-page.html"><i class="fa fa-fw fa-file"></i> Blank Page</a>
                </li>
                <li class="list-group-item">
                    <a href="index-rtl.html"><i class="fa fa-fw fa-dashboard"></i> RTL Dashboard</a>
                </li>
                <li class="list-group-item more-themes">
                    <a href="http://www.strapui.com/">Buy More Themes</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>

    <div id="page-wrapper">

        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        Dashboard <small>Statistics Overview</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li class="active">
                            <i class="fa fa-dashboard"></i> Dashboard
                        </li>
                    </ol>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-xl-3 col-lg-6">
                    <div class="card card-primary card-inverse">
                        <div class="card-header card-primary">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-comments fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-xs-right">
                                    <div class="huge">26</div>
                                    <div>New Comments!</div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer card-default">
                            <a href="javascript:;">
                                <span class="pull-xs-left">View Details</span>
                                <span class="pull-xs-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6">
                    <div class="card card-green card-inverse">
                        <div class="card-header card-green">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-xs-right">
                                    <div class="huge">12</div>
                                    <div>New Tasks!</div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer card-green">
                            <a href="javascript:;">
                                <span class="pull-xs-left">View Details</span>
                                <span class="pull-xs-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6">
                    <div class="card card-yellow card-inverse">
                        <div class="card-header card-yellow">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-shopping-cart fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-xs-right">
                                    <div class="huge">124</div>
                                    <div>New Orders!</div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer card-yellow">
                            <a href="javascript:;">
                                <span class="pull-xs-left">View Details</span>
                                <span class="pull-xs-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-6">
                    <div class="card card-red card-inverse">
                        <div class="card-header card-red">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-support fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-xs-right">
                                    <div class="huge">13</div>
                                    <div>Support Tickets!</div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer card-red">
                            <a href="javascript:;">
                                <span class="pull-xs-left">View Details</span>
                                <span class="pull-xs-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header card-default">
                            <i class="fa fa-bar-chart-o fa-fw"></i> Area Chart
                        </div>
                        <div class="card-block">
                            <div id="morris-area-chart" style="position: relative; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><svg height="349" version="1.1" width="868" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with RaphaÃ«l 2.1.2</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><text x="50.5" y="317" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">0</tspan></text><path fill="none" stroke="#aaaaaa" d="M63,317H843" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="50.5" y="244" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">7,500</tspan></text><path fill="none" stroke="#aaaaaa" d="M63,244H843" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="50.5" y="171" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">15,000</tspan></text><path fill="none" stroke="#aaaaaa" d="M63,171H843" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="50.5" y="98" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">22,500</tspan></text><path fill="none" stroke="#aaaaaa" d="M63,98H843" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="50.5" y="25" text-anchor="end" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">30,000</tspan></text><path fill="none" stroke="#aaaaaa" d="M63,25H843" stroke-width="0.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="698.9416767922236" y="329.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">2012</tspan></text><text x="353.0121506682868" y="329.5" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#888888" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;" font-size="12px" font-family="sans-serif" font-weight="normal" transform="matrix(1,0,0,1,0,7)"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="4">2011</tspan></text><path fill="#7cb47c" stroke="none" d="M63,265.28679999999997C84.79829890643985,259.9334666666666,128.39489671931955,248.82408333333333,150.19319562575942,243.87346666666667C171.99149453219928,238.92285,215.58809234507896,232.45903242258652,237.38639125151883,225.68186666666668C258.94775212636694,218.97836575591987,302.0704738760632,191.95104033149173,323.6318347509113,189.95080000000002C344.9562575941677,187.97254033149173,387.6051032806804,208.31308095238094,408.9295261239368,209.76786666666666C430.72782503037666,211.25498095238095,474.32442284325634,200.72803333333334,496.1227217496962,201.7184C517.9210206561361,202.70876666666666,561.5176184690158,235.27106156648452,583.3159173754557,217.6908C604.8772782503038,200.30162823315118,648,70.32326666666665,669.5613608748481,61.840666666666664C691.1227217496962,53.35806666666666,734.2454434993925,137.3922227686703,755.8068043742406,149.83C777.6051032806805,162.40445610200365,821.2017010935601,158.8747,843,161.8896L843,317L63,317Z" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></path><path fill="none" stroke="#4da74d" d="M63,265.28679999999997C84.79829890643985,259.9334666666666,128.39489671931955,248.82408333333333,150.19319562575942,243.87346666666667C171.99149453219928,238.92285,215.58809234507896,232.45903242258652,237.38639125151883,225.68186666666668C258.94775212636694,218.97836575591987,302.0704738760632,191.95104033149173,323.6318347509113,189.95080000000002C344.9562575941677,187.97254033149173,387.6051032806804,208.31308095238094,408.9295261239368,209.76786666666666C430.72782503037666,211.25498095238095,474.32442284325634,200.72803333333334,496.1227217496962,201.7184C517.9210206561361,202.70876666666666,561.5176184690158,235.27106156648452,583.3159173754557,217.6908C604.8772782503038,200.30162823315118,648,70.32326666666665,669.5613608748481,61.840666666666664C691.1227217496962,53.35806666666666,734.2454434993925,137.3922227686703,755.8068043742406,149.83C777.6051032806805,162.40445610200365,821.2017010935601,158.8747,843,161.8896" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="63" cy="265.28679999999997" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="150.19319562575942" cy="243.87346666666667" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="237.38639125151883" cy="225.68186666666668" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="323.6318347509113" cy="189.95080000000002" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="408.9295261239368" cy="209.76786666666666" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="496.1227217496962" cy="201.7184" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="583.3159173754557" cy="217.6908" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="669.5613608748481" cy="61.840666666666664" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="755.8068043742406" cy="149.83" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="843" cy="161.8896" r="2" fill="#4da74d" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><path fill="#a7b3bc" stroke="none" d="M63,291.0509333333333C84.79829890643985,285.1963333333333,128.39489671931955,272.76078333333334,150.19319562575942,267.63253333333336C171.99149453219928,262.5042833333334,215.58809234507896,252.82877158469947,237.38639125151883,250.02493333333334C258.94775212636694,247.25157158469946,302.0704738760632,247.5784384898711,323.6318347509113,245.32373333333334C344.9562575941677,243.09380515653777,387.6051032806804,235.21376813186814,408.9295261239368,232.0864C430.72782503037666,228.88953479853478,474.32442284325634,219.8941833333333,496.1227217496962,220.02679999999998C517.9210206561361,220.15941666666666,561.5176184690158,246.69799489981784,583.3159173754557,233.14733333333334C604.8772782503038,219.74396156648453,648,120.15793333333333,669.5613608748481,112.21066666666667C691.1227217496962,104.26339999999999,734.2454434993925,161.22612440801456,755.8068043742406,169.5692C777.6051032806805,178.0039577413479,821.2017010935601,176.8838,843,179.322L843,317L63,317Z" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></path><path fill="none" stroke="#7a92a3" d="M63,291.0509333333333C84.79829890643985,285.1963333333333,128.39489671931955,272.76078333333334,150.19319562575942,267.63253333333336C171.99149453219928,262.5042833333334,215.58809234507896,252.82877158469947,237.38639125151883,250.02493333333334C258.94775212636694,247.25157158469946,302.0704738760632,247.5784384898711,323.6318347509113,245.32373333333334C344.9562575941677,243.09380515653777,387.6051032806804,235.21376813186814,408.9295261239368,232.0864C430.72782503037666,228.88953479853478,474.32442284325634,219.8941833333333,496.1227217496962,220.02679999999998C517.9210206561361,220.15941666666666,561.5176184690158,246.69799489981784,583.3159173754557,233.14733333333334C604.8772782503038,219.74396156648453,648,120.15793333333333,669.5613608748481,112.21066666666667C691.1227217496962,104.26339999999999,734.2454434993925,161.22612440801456,755.8068043742406,169.5692C777.6051032806805,178.0039577413479,821.2017010935601,176.8838,843,179.322" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="63" cy="291.0509333333333" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="150.19319562575942" cy="267.63253333333336" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="237.38639125151883" cy="250.02493333333334" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="323.6318347509113" cy="245.32373333333334" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="408.9295261239368" cy="232.0864" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="496.1227217496962" cy="220.02679999999998" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="583.3159173754557" cy="233.14733333333334" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="669.5613608748481" cy="112.21066666666667" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="755.8068043742406" cy="169.5692" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="843" cy="179.322" r="2" fill="#7a92a3" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><path fill="#2577b5" stroke="none" d="M63,291.0509333333333C84.79829890643985,290.7784,128.39489671931955,292.69343333333336,150.19319562575942,289.9608C171.99149453219928,287.22816666666665,215.58809234507896,270.3997253187614,237.38639125151883,269.18986666666666C258.94775212636694,267.99315865209473,302.0704738760632,282.6565248618785,323.6318347509113,280.33453333333335C344.9562575941677,278.0380581952118,387.6051032806804,253.00587362637364,408.9295261239368,250.716C430.72782503037666,248.3752402930403,474.32442284325634,259.3908333333334,496.1227217496962,261.812C517.9210206561361,264.2331666666667,561.5176184690158,281.58816539162115,583.3159173754557,270.0853333333333C604.8772782503038,258.70753205828777,648,177.42765,669.5613608748481,170.28946666666667C691.1227217496962,163.15128333333334,734.2454434993925,204.94413570127506,755.8068043742406,212.97986666666668C777.6051032806805,221.1039023679417,821.2017010935601,229.44136666666668,843,234.92853333333335L843,317L63,317Z" fill-opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); fill-opacity: 1;"></path><path fill="none" stroke="#0b62a4" d="M63,291.0509333333333C84.79829890643985,290.7784,128.39489671931955,292.69343333333336,150.19319562575942,289.9608C171.99149453219928,287.22816666666665,215.58809234507896,270.3997253187614,237.38639125151883,269.18986666666666C258.94775212636694,267.99315865209473,302.0704738760632,282.6565248618785,323.6318347509113,280.33453333333335C344.9562575941677,278.0380581952118,387.6051032806804,253.00587362637364,408.9295261239368,250.716C430.72782503037666,248.3752402930403,474.32442284325634,259.3908333333334,496.1227217496962,261.812C517.9210206561361,264.2331666666667,561.5176184690158,281.58816539162115,583.3159173754557,270.0853333333333C604.8772782503038,258.70753205828777,648,177.42765,669.5613608748481,170.28946666666667C691.1227217496962,163.15128333333334,734.2454434993925,204.94413570127506,755.8068043742406,212.97986666666668C777.6051032806805,221.1039023679417,821.2017010935601,229.44136666666668,843,234.92853333333335" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><circle cx="63" cy="291.0509333333333" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="150.19319562575942" cy="289.9608" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="237.38639125151883" cy="269.18986666666666" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="323.6318347509113" cy="280.33453333333335" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="408.9295261239368" cy="250.716" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="496.1227217496962" cy="261.812" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="583.3159173754557" cy="270.0853333333333" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="669.5613608748481" cy="170.28946666666667" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="755.8068043742406" cy="212.97986666666668" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle><circle cx="843" cy="234.92853333333335" r="2" fill="#0b62a4" stroke="#ffffff" stroke-width="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></circle></svg><div class="morris-hover morris-default-style" style="left: 506.547px; top: 166px; display: none;"><div class="morris-hover-row-label">2010 Q4</div><div class="morris-hover-point" style="color: #0b62a4">
                                iPhone:
                                3,767
                            </div><div class="morris-hover-point" style="color: #7A92A3">
                                iPad:
                                3,597
                            </div><div class="morris-hover-point" style="color: #4da74d">
                                iPod Touch:
                                5,689
                            </div></div></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-xl-4 col-lg-12">
                    <div class="card">
                        <div class="card-header card-default">
                            <i class="fa fa-long-arrow-right fa-fw"></i> Donut Chart
                        </div>
                        <div class="card-block">
                            <div id="morris-donut-chart"><svg height="349" version="1.1" width="241" xmlns="http://www.w3.org/2000/svg" style="overflow: hidden; position: relative;"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with RaphaÃ«l 2.1.2</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs><path fill="none" stroke="#0b62a4" d="M120.5,251.66666666666669A73.66666666666667,73.66666666666667,0,0,0,190.2797796013238,201.6127113345429" stroke-width="2" opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path><path fill="#0b62a4" stroke="#ffffff" d="M120.5,254.66666666666669A76.66666666666667,76.66666666666667,0,0,0,193.1214900828257,202.57431496355142L220.43348526614926,211.81639428680012A105.5,105.5,0,0,1,120.5,283.5Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><path fill="none" stroke="#3980b5" d="M190.2797796013238,201.6127113345429A73.66666666666667,73.66666666666667,0,0,0,54.43985863753224,145.39884203055732" stroke-width="2" opacity="1" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 1;"></path><path fill="#3980b5" stroke="#ffffff" d="M193.1214900828257,202.57431496355142A76.66666666666667,76.66666666666667,0,0,0,51.74962663634578,144.07119306347596L21.409787956298374,129.098263045836A110.5,110.5,0,0,1,225.16966940198574,213.4190670018143Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><path fill="none" stroke="#679dc6" d="M54.43985863753224,145.39884203055732A73.66666666666667,73.66666666666667,0,0,0,120.47685693449925,251.66666303136242" stroke-width="2" opacity="0" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); opacity: 0;"></path><path fill="#679dc6" stroke="#ffffff" d="M51.74962663634578,144.07119306347596A76.66666666666667,76.66666666666667,0,0,0,120.47591445671868,254.66666288331834L120.46685619804984,283.49999479378374A105.5,105.5,0,0,1,25.89350795827582,131.31101132430496Z" stroke-width="3" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><text x="120.5" y="168" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: 800; font-stretch: normal; font-size: 15px; line-height: normal; font-family: Arial;" font-size="15px" font-weight="800" transform="matrix(1.1408,0,0,1.1408,-16.9651,-25.2029)" stroke-width="0.8765789969834086"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="6">In-Store Sales</tspan></text><text x="120.5" y="188" text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; line-height: normal; font-family: Arial;" font-size="14px" transform="matrix(1.5347,0,0,1.5347,-64.434,-96.25)" stroke-width="0.6515837104072397"><tspan style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" dy="5">30</tspan></text></svg></div>
                            <div class="text-xs-right">
                                <a href="javascript:;">View Details <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-12">
                    <div class="card card-default">
                        <div class="card-header card-default">
                            <i class="fa fa-clock-o fa-fw"></i> Tasks Card
                        </div>
                        <div class="card-block">
                            <div class="list-group">
                                <a href="javascript:;" class="list-group-item">
                                    <span class="label label-pill label-default pull-xs-right">just now</span>
                                    <i class="fa fa-fw fa-calendar"></i> Calendar updated
                                </a>
                                <a href="javascript:;" class="list-group-item">
                                    <span class="label label-pill label-default pull-xs-right">4 minutes ago</span>
                                    <i class="fa fa-fw fa-comment"></i> Commented on a post
                                </a>
                                <a href="javascript:;" class="list-group-item">
                                    <span class="label label-pill label-default pull-xs-right">23 minutes ago</span>
                                    <i class="fa fa-fw fa-truck"></i> Order 392 shipped
                                </a>
                                <a href="javascript:;" class="list-group-item">
                                    <span class="label label-pill label-default pull-xs-right">46 minutes ago</span>
                                    <i class="fa fa-fw fa-money"></i> Invoice 653 has been paid
                                </a>
                                <a href="javascript:;" class="list-group-item">
                                    <span class="label label-pill label-default pull-xs-right">1 hour ago</span>
                                    <i class="fa fa-fw fa-user"></i> A new user has been added
                                </a>
                                <a href="javascript:;" class="list-group-item">
                                    <span class="label label-pill label-default pull-xs-right">2 hours ago</span>
                                    <i class="fa fa-fw fa-check"></i> Completed task: "pick up dry cleaning"
                                </a>
                                <a href="javascript:;" class="list-group-item">
                                    <span class="label label-pill label-default pull-xs-right">yesterday</span>
                                    <i class="fa fa-fw fa-globe"></i> Saved the world
                                </a>
                                <a href="javascript:;" class="list-group-item">
                                    <span class="label label-pill label-default pull-xs-right">two days ago</span>
                                    <i class="fa fa-fw fa-check"></i> Completed task: "fix error on sales page"
                                </a>
                            </div>
                            <div class="text-xs-right">
                                <a href="javascript:;">View All Activity <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-12">
                    <div class="card card-default">
                        <div class="card-header card-default">
                            <i class="fa fa-money fa-fw"></i> Transactions Card
                        </div>
                        <div class="card-block">
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover table-striped">
                                    <thead>
                                    <tr>
                                        <th>Order #</th>
                                        <th>Order Date</th>
                                        <th>Order Time</th>
                                        <th>Amount (USD)</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>3326</td>
                                        <td>10/21/2013</td>
                                        <td>3:29 PM</td>
                                        <td>$321.33</td>
                                    </tr>
                                    <tr>
                                        <td>3325</td>
                                        <td>10/21/2013</td>
                                        <td>3:20 PM</td>
                                        <td>$234.34</td>
                                    </tr>
                                    <tr>
                                        <td>3324</td>
                                        <td>10/21/2013</td>
                                        <td>3:03 PM</td>
                                        <td>$724.17</td>
                                    </tr>
                                    <tr>
                                        <td>3323</td>
                                        <td>10/21/2013</td>
                                        <td>3:00 PM</td>
                                        <td>$23.71</td>
                                    </tr>
                                    <tr>
                                        <td>3322</td>
                                        <td>10/21/2013</td>
                                        <td>2:49 PM</td>
                                        <td>$8345.23</td>
                                    </tr>
                                    <tr>
                                        <td>3321</td>
                                        <td>10/21/2013</td>
                                        <td>2:23 PM</td>
                                        <td>$245.12</td>
                                    </tr>
                                    <tr>
                                        <td>3320</td>
                                        <td>10/21/2013</td>
                                        <td>2:15 PM</td>
                                        <td>$5663.54</td>
                                    </tr>
                                    <tr>
                                        <td>3319</td>
                                        <td>10/21/2013</td>
                                        <td>2:13 PM</td>
                                        <td>$943.45</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="text-xs-right">
                                <a href="javascript:;">View All Transactions <i class="fa fa-arrow-circle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->
</body>
</html>