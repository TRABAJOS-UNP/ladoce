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
	    	<h1 align="center">Sedes</h1>
	  </div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading text-medium text-center">
						Nombre de Sede
						<a href="reservas.action" class="thumbnail">
				      <img src="Imagenes/sede.jpg" alt="Sede">
				    </a>
					</div>
					<div class="panel-body">
							<label>Ubicacion:</label> distrito - provincia - departamento <br>
							<label>Dirección:</label> direccion direccion direccion direccion <br>
							<label>Número de Canchas:</label> 10 <br>
					</div>
				</div>
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
