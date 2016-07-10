<%@ page language="java" contentType="text/html; charset=utf-8"
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
    <h2>Administración de Provincias</h2>
    <ul class="nav nav-tabs">
      <li class="active"><a data-toggle="tab" href="#tab-nuevo">Nuevo</a></li>
      <li><a data-toggle="tab" href="#tab-lista">Lista</a></li>
    </ul>
    <br>
    <div class="tab-content">
      <div id="tab-nuevo" class="tab-pane fade in active">
        <div class="container">
          <div class="row">
            <div class="col-xs-11 col-sm-8 col-md-6 no-float center-block">
              <form class='form-horizontal '>
                <div class="form-group">
                  <label for="">Nombre:</label>
                  <input type="text" class="form-control">
                </div>
                <div class='form-group'>
                  <button type='submit' class='btn btn-primary '>Guardar</button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div id="tab-lista" class="tab-pane fade">
        <div class="container">
          <div class="row">
            <table class="table table-striped">
            	<thead>
            		<tr>
            			<th>Id</th>
                  <th>Nombre</th>
                  <th>Operación</th>
            		</tr>
            	</thead>
            	<tbody>
                <tr>
                  <td>4</td>
                  <td>Nombre  Provincia</td>
                  <td>
                      <button type="button" class="btn btn-info btn-xs">
                        <span class="glyphicon glyphicon-search"></span>
                      </button>
                      <button type="button" class="btn btn-primary btn-xs">
                        <span class="glyphicon glyphicon-pencil"></span>
                      </button>
                      <button type="button" class="btn btn-danger btn-xs">
                        <span class="glyphicon glyphicon-remove"></span>
                      </button>
                  </td>
            		</tr>
            	</tbody>
            </table>

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
