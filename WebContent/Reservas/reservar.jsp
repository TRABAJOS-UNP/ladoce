<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@page import="modelo.HelperVistas"%>
    <%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <title>La 12</title>
    <%= HelperVistas.getLinkToCss() %>
</head>
<body>
<%=HelperVistas.getNavbar(request.getSession())%>
	


	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-8 col-md-6 no-float center-block">
				<form class="">
					<div class="form-group">
						<label for="">Sede:</label>
						<select class="form-control" name="">
							<option value="1">Nombre Sede - Direccion 1</option>
							<option value="2">Nombre Sede - Direccion 2</option>
							<option value="3">Nombre Sede - Direccion 3</option>
							<option value="4">Nombre Sede - Direccion 4</option>
						</select>
					</div>
					<div class="form-group">
						<label for="">Fecha:</label>
						<input type="date" name="fecha" class="form-control" placeholder="dia/mes/año">
					</div>
					<div class="form-group">
						<label for="">Hora de Inicio:</label>
						<select class="form-control" name="hora_inicio">
							<option value="1">7:00am</option>
							<option value="2">8:00am</option>
							<option value="3">9:00am</option>
							<option value="4">10:00am</option>
							<option value="5">11:00am</option>
							<option value="6">12:00am</option>
						</select>
					</div>
					<div class="form-group">
						<button type="submit" name="button" class="btn btn-default">
							<span class="glyphicon glyphicon-refresh"></span> Consultar
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<h2 align="center">Canchas Disponibles</h2>
		</div>
		<div id="div_canchas" class="row">
			<div class="col-xs-12 col-sm-6">
				<div class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">Cancha Nº 1</h3>
				  </div>
				  <div class="panel-body">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>H. Inicio</th>
									<th>H. Fin</th>
									<th>Costo</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>10:00am</td>
									<td>11:00am</td>
									<td>S/. 20.00</td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>11:00am</td>
									<td>12:00am</td>
									<td>S/. 20.00</td>
									<td><input type="checkbox"></td>
								</tr>
								<tr>
									<td>01:00pm</td>
									<td>02:00pm</td>
									<td>S/. 25.00</td>
									<td><input type="checkbox"></td>
								</tr>
							</tbody>
						</table>
					  <label>
							Total: S/. <label id="total_codcancha" >00.00</label>
						</label><br>
						<button type="button" name="button" class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Guardar Reserva</button>
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