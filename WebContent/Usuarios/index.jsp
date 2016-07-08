<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

   
    <title>La 12</title>
   
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../bootstrap/css/style.css" rel="stylesheet">
</head>
<body>
<% HttpSession sesion=request.getSession();
	if(request.getParameter("cerrar")!=null){
		sesion.invalidate();
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
        <a class="navbar-brand" href="/SistemaReservas/">
          <img alt="LogoLa12" src="">
        </a>
      </div>
      <div class="collapse navbar-collapse" id="navbar1">
        <ul class="nav navbar-nav">
          <li><a href="../index.jsp"> Home <span class="sr-only">(current)</span></a></li>
          <li><a href="../Sedes">Sedes</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li class="active"><a href="../Usuarios">Iniciar Sesión</a></li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container">
    <h2>La 12, <small>más que fútbol</small></h2>
    <ul class="nav nav-tabs">
      <li class="active"><a data-toggle="tab" href="#tab-iniciar">Iniciar Sesión</a></li>
      <li><a data-toggle="tab" href="#tab-registrarse">Registrarse</a></li>
    </ul>
    <br>
    <div class="tab-content">
      <div id="tab-iniciar" class="tab-pane fade in active">
        <div class="container">
          <div class="row">
            <h1 align="center">Iniciar Sesión</h1>
          </div>
          <div class="row">
            <div class="col-xs-10 col-sm-6 col-md-4 no-float center-block">
              <form method="post" action="autenticacion" class='form-horizontal'>
                <div class="form-group">
                  <label for="">Email:</label>
                  <s:textfield name="email" class="form-control" placeholder="email"></s:textfield>
                </div>
                <div class="form-group">
                  <label for="">Contraseña:</label>
                  <s:password name="pass" class="form-control" placeholder="password"></s:password>
                  
                 
                </div>
                <div class='form-group'>
                  <s:submit class="btn btn-primary" value="Ingresar"></s:submit>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div id="tab-registrarse" class="tab-pane fade">
        <div class="container">
          <div class="row">
            <h1 align="center">Registrarse</h1>
          </div> 
          <div class="row">
            <div class="col-xs-10 col-sm-6 col-md-4 no-float center-block">
              <form class='form-horizontal' action="Controlador_RegistroCliente" method="post">
                <div class="form-group">
                  <label for="">Nombres:</label>
                  <input type="text" class="form-control" name="nombre">
                </div>
                <div class="form-group">
                  <label for="">Apellidos:</label>
                  <input type="text" class="form-control" name="apellidos">
                </div>
                <div class="form-group">
                  <div class="row">
                    <div class="col-xs-6">
                      <label for="">DNI:</label>
                      <input type="text" class="form-control " name="dni">
                    </div>
                    <div class="col-xs-6">
                      <label for="">Celular:</label>
                      <input type="text" class="form-control" name="celular">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label for="">Email:</label>
                  <input type="email" class="form-control" name="email">
                </div>
                <div class="form-group">
                  <label for="">Contraseña:</label>
                  <input type="password" class="form-control" name="password">
                </div>
                <div class='form-group'>
                  <button type='submit' class='btn btn-primary '>Registrarse</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="../bootstrap/js/jquery.min.js"></script>
  <script src="../bootstrap/js/bootstrap.min.js"></script>
  <script>
    $(function () {
      $('[data-toggle="tooltip"]').tooltip()
    })
  </script>
</body>
</html>