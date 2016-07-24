<%@page import="modelo.Usuario"%>
<%@page import="modelo.HelperVistas"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>La 12</title>
	<%= HelperVistas.getLinkToCss() %>
</head>
<body>

	<%
       	out.println(HelperVistas.getNavbar(request.getSession()));
    %>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-sm-8 col-md-6 no-float center-block">
				<form method="get" action="" class="">
					<div class="form-group">
						<label for="">Sede:</label>
						<select name="sede" class="form-control">
							<option value="1">Nombre Sede - Direccion 1</option>
							<option value="2">Nombre Sede - Direccion 2</option>
							<option value="3">Nombre Sede - Direccion 3</option>
							<option value="4">Nombre Sede - Direccion 4</option>
						</select>
					</div>
					<div class="form-group">
						<div class="row">
						  <div class="col-xs-6">
								<label for="">Fecha:</label>
								<input name="fecha" type="date" class="form-control" placeholder="dia/mes/a�o">
						  </div>
							<div class="col-xs-6">
								<label for="">Hora de Inicio:</label>
								<select name="hora_inicio" class="form-control">
									<option value="1">7:00am</option>
									<option value="2">8:00am</option>
									<option value="3">9:00am</option>
									<option value="4">10:00am</option>
									<option value="5">11:00am</option>
									<option value="6">12:00am</option>
								</select>
							</div>
						</div>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-refresh"></span> Consultar
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row panel panel-body">
			<h2 align="center">Canchas Disponibles</h2>
      <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Guardar Reserva</button>

		</div>
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<div id="cancha1" class="panel panel-default">
				  <div class="panel-heading">
				    <h3 class="panel-title">Cancha 1</h3>
				  </div>
				  <form method="post" action="" class="panel-body">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>H. Inicio</th>
									<th>H. Fin</th>
									<th>Precio(S/.)</th>
									<th><span class="glyphicon glyphicon-hand-down"></span></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>10:00am</td>
									<td>11:00am</td>
									<td>20.00</td>
									<td>
										<input name="canch1_cod1" type="checkbox" onClick="evaluar(this, 'cancha1', 20.00)">
									</td>
								</tr>
								<tr>
									<td>11:00am</td>
									<td>12:00am</td>
									<td>20.00</td>
									<td>
										<input name="canch1_cod2" type="checkbox" onClick="evaluar(this, 'cancha1', 20.00)">
									</td>
								</tr>
								<tr>
									<td>01:00pm</td>
									<td>02:00pm</td>
									<td>25.00</td>
									<td>
										<input name="canch1_cod3" type="checkbox" onClick="evaluar(this, 'cancha1', 25.00)">
									</td>
								</tr>
							</tbody>
						</table>
					  <label>Total: S/. </label>
						<label class="reservatotal" >00.00</label><br>

				  </form>
				</div>
			</div>
			<div class="col-xs-12 col-sm-6">
				<div id="cancha2" class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Cancha 2</h3>
					</div>
					<form method="post" action="" class="panel-body">
						<table class="table table-striped">
							<thead>
								<tr>
									<th>H. Inicio</th>
									<th>H. Fin</th>
									<th>Precio(S/.)</th>
									<th><span class="glyphicon glyphicon-hand-down"></span></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>10:00am</td>
									<td>11:00am</td>
									<td>20.00</td>
									<td>
										<input name="canch2_cod1" type="checkbox" onClick="evaluar(this, 'cancha2', 20.00)">
									</td>
								</tr>
								<tr>
									<td>11:00am</td>
									<td>12:00am</td>
									<td>20.00</td>
									<td>
										<input name="canch2_cod2" type="checkbox" onClick="evaluar(this, 'cancha2', 20.00)">
									</td>
								</tr>
								<tr>
									<td>01:00pm</td>
									<td>02:00pm</td>
									<td>25.00</td>
									<td>
										<input name="canch2_cod3" type="checkbox" onClick="evaluar(this, 'cancha2', 25.00)">
									</td>
								</tr>
							</tbody>
						</table>
						<label>Total: S/. </label>
						<label class="reservatotal" >00.00</label><br>

					</form>
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
