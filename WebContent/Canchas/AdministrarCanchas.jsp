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
    <h2>Administración de Canchas - Sede Nº 01</h2>
    <ul class="nav nav-tabs">
      <li class="active"><a data-toggle="tab" href="#tab-nuevo">Nuevo</a></li>
      <li><a data-toggle="tab" href="#tab-lista">Lista</a></li>
    </ul>
    <br>
    <div class="tab-content">
      <div id="tab-nuevo" class="tab-pane fade in active">
        <div class="container">
          <div class="row">
            <div class="col-xs-12 col-sm-10 col-md-8 no-float center-block">
              <form class="form-horizontal">
                <div class="form-group">
                  <label class="col-sm-3 control-label">Nº Cancha:</label>
                  <div class="col-sm-6">
                    <input type="number" name="nro_cancha" class="form-control">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-10 no-float center-block">
                    <button type="submit" class="btn btn-primary">Guardar</button>
                    <button type="reset" class="btn btn-default">Limpiar</button>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div id="tab-lista" class="tab-pane fade">
        <div class="container">
          <div class="row">
            <div class="col-xs-12 col-sm-offset-6 col-sm-6 col-md-offset-8 col-md-4">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Buscar" aria-label="...">
                  <div class="input-group-btn">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu-right">
                      <li><a href="#">Buscar</a></li>
                      <li role="separator" class="divider"></li>
                      <li><a href="#">Ver Todos</a></li>
                    </ul>
                  </div><!-- /btn-group -->
                </div><!-- /input-group -->
              </div><!-- /.col-lg-6 -->
          </div>
          <div class="row">
            <table class="table table-striped">
            	<thead>
            		<tr>
            			<th>Nº</th>
                  <th>Estado Actual</th>
                  <th>Operación</th>
            		</tr>
            	</thead>
            	<tbody>
	                <tr>
	                  <td>1</td>
	                  <td>Mantenimiento</td>
	                  <td>
	                      <button type="button" class="btn btn-primary btn-xs" data-toggle="tooltip" data-placement="bottom" title="Editar">
	                        <span class="glyphicon glyphicon-pencil"></span>
	                      </button>
	                      <button type="button" class="btn btn-warning btn-xs" data-toggle="tooltip" data-placement="bottom" title="Cambiar estado">
	                        <span class="glyphicon glyphicon-transfer"></span>
	                      </button>
	                      <button type="button" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="bottom" title="Eliminar">
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
<%= HelperVistas.getScripts() %>
  <script>
    $(function () {
      $('[data-toggle="tooltip"]').tooltip()
    })
  </script>
</body>
</html>
