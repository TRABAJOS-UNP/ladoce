<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="modelo.HelperVistas"%>
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
	    	<h1 align="center">Modificar Sede</h1>
	  </div>
		<div class="row">
			<!--Formulacio Crear Sede-->
			<div class="col-xs-11 col-sm-8 col-md-6 no-float center-block">
				<form class='form-horizontal '>
					<div class="form-group">
					  <label for="">Nombre:</label>
					  <input type="text" class="form-control">
					</div>
					<div class="form-group">
						<label for="">Departamento</label>
						<select class="form-control" name="">
							<option value="1">Piura</option>
							<option value="2">Lima</option>
						</select>
					</div>
					<div class="form-group">
						<label for="">Provincia</label>
						<select class="form-control" name="">
							<option value="1">Piura</option>
							<option value="2">Ayabaca</option>
						</select>
					</div>
					<div class="form-group">
						<label for="">Distrito</label>
						<select class="form-control" name="">
							<option value="1">Piura</option>
							<option value="2">Castilla</option>
						</select>
					</div>
					<div class="form-group">
					  <label for="">Direccion:</label>
					  <input type="text" class="form-control">
					</div>
					<div class='form-group'>
					  <button type='submit' class='btn btn-primary '>Guardar</button>
					</div>
			  </form>
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
