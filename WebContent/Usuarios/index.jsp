<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="modelo.HelperVistas"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

   <%= HelperVistas.getLinkToCss() %>
    <title>La 12</title>
    
</head>
<body>

  <%=HelperVistas.getNavbar(request.getSession())%>
  
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
            
             <s:if test="getFieldErrors().get('user')!=null">
             <div class='row'>
						<div class=' no-float center-block'>
							<div class='alert alert-danger text-center'>
								<div class='alert-header'>
									<button type='button' class='close' data-dismiss='alert'>&times;</button>
								</div>
							<div class='alert-body'>
             	<s:property value='getFieldErrors().get("user")[0]'/>
             	
             		</div>
						</div>
					</div>
				</div>
             
             </s:if>
              
              
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
              <form class='form-horizontal' action="registrar" method="post">
                <div class="form-group">
                  <label for="">Nombres:</label>
                  <s:textfield class="form-control" name="nombre"></s:textfield>
                </div>
                <div class="form-group">
                  <label for="">Apellidos:</label>
                  <s:textfield class="form-control" name="apellidos"></s:textfield>
                </div>
                <div class="form-group">
                  <div class="row">
                    <div class="col-xs-6">
                      <label for="">DNI:</label>
                      <s:textfield class="form-control" name="dni"></s:textfield>
                    </div>
                    <div class="col-xs-6">
                      <label for="">Celular:</label>
                      <s:textfield class="form-control" name="celular"></s:textfield>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label for="">Email:</label>
                  
                  <s:textfield type="email" class="form-control" name="email"></s:textfield>
                  
                </div>
                <div class="form-group">
                  <label for="">Contraseña:</label>
                  <s:password class="form-control" name="password"></s:password>
                </div>
                <div class='form-group'>
                	<s:submit class='btn btn-primary ' value="Registrate"></s:submit>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%= HelperVistas.getScripts() %>
  <script>
    $(function () {
      $('[data-toggle="tooltip"]').tooltip()
    })
  </script>
</body>
</html>