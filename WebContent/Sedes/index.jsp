<%@ page language="java" contentType="text/html; utf=8"
    pageEncoding="utf-8"%>
    <%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
    <title>La 12</title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../bootstrap/css/style.css" rel="stylesheet">
</head>
<body>
<% HttpSession sesion=request.getSession();

String nombre=null;
if(sesion.getAttribute("tipo")==null)
		 nombre="invitado";
	
		 else {
			 try{
				 
			 nombre=sesion.getAttribute("nombres").toString();}
		catch(Exception e){}	 
		 }
	%>
	<nav class="navbar navbar-inverse">
	    <div class="container-fluid">
	      <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar1" aria-expanded="false">
	          <span class="sr-only">Toggle navigation</span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	        </button>
	        <a class="navbar-brand" href="/ladoce1/">
	          <img alt="LogoLa12" src="">
	        </a>
	      </div>
	      <div class="collapse navbar-collapse" id="navbar1">
	        <ul class="nav navbar-nav">
	          <li><a href="../index.jsp">Home <span class="sr-only">(current)</span></a></li>
	          <li class="active"><a href="../Sedes">Sedes</a></li>
	        </ul>
	        <ul class="nav navbar-nav navbar-right">
	          <li class="dropdown">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
								<span class="glyphicon glyphicon-user"></span> <% 	out.print(nombre);%><span class="caret"></span>
							</a>
	            <ul class="dropdown-menu">
	                <li><a href="#">A ction</a></li>
	                <li><a href="#">Another action</a></li>
	                <li><a href="#">Something else here</a></li>
	                <li role="separator" class="divider"></li>
	                <li><a href="../Usuarios/index.jsp?cerrar=true">Cerrar Sessión</a></li>
	            </ul>
	          </li>
	        </ul>
	      </div>
	    </div>
	</nav>

	<div class="container">
	  <div class="row">
	    	<h1 align="center">Sedes</h1>
	  </div>
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-md-4">
				<div class="panel panel-default">
					<div class="panel-heading text-medium text-center">
						Nombre de Sede
						<a href="../Reservas/reservar.jsp" class="thumbnail">
				      <img src="../Imagenes/sede.jpg" alt="Sede">
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
	<script src="../bootstrap/js/jquery.min.js"></script>
  <script src="../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
