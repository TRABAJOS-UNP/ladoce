<%@page import="modelo.HelperVistas"%>
<%@ page language="java" contentType="text/html; utf=8"
    pageEncoding="utf-8"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
    <title>La 12</title>
    <%= HelperVistas.getLinkToCss() %>
</head>
<body>

	<%=HelperVistas.getNavbar(request.getSession())%>
	
	<div class="container">
		<div class="row">
			<h3 align="center">Canchas Deportivas</h3>
			<h1 align="center">La 12 <small>más que futbol</small></h1>
		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6  col-md-4 no-float center-block">
				<a href="reservar" type="button" class="btn btn-success btn-lg btn-block">
					<span class="glyphicon glyphicon-hand-right"></span>
					Reservar
					<span class="glyphicon glyphicon-hand-left"></span>
				</a>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</p>
				<p>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
				</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row panel panel-default">
			<h3 align="center">Footer</h3>
		</div>
	</div>
	<%= HelperVistas.getScripts() %>
</body>
</html>
