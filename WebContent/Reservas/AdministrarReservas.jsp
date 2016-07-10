<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
    <h2>Administración de Reservas - Sede Nº 1</h2>
    <ul class="nav nav-tabs">
      <li class="active"><a data-toggle="tab" href="#tab-lista">Lista</a></li>
    </ul>
    <br>
    <div class="tab-content">
      <div id="tab-lista" class="tab-pane fade in active">
        <div class="container">
          <div class="row">
            <div class="col-xs-12 col-sm-offset-6 col-sm-6 col-md-offset-8 col-md-4">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Buscar" aria-label="...">
                  <div class="input-group-btn">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
                    <ul class="dropdown-menu dropdown-menu-right">
                      <li><a href="#">por código</a></li>
                      <li><a href="#">por cliente</a></li>
                      <li><a href="#">por cancha</a></li>
                      <li><a href="#">por fecha</a></li>
                      <li role="separator" class="divider"></li>
                      <li><a href="#">Reservas de hoy</a></li>
                    </ul>
                  </div><!-- /btn-group -->
                </div><!-- /input-group -->
              </div><!-- /.col-lg-6 -->
          </div>
          <div class="row">
            <table class="table table-striped">
            	<thead>
            		<tr>
            			<th>Cód.</th>
                  <th>Cliente</th>
                  <th>Cancha</th>
                  <th>Fecha y H. de Inicio</th>
                  <th>Estado</th>
                  <th>Total</th>
                  <th>Operación</th>
            		</tr>
            	</thead>
            	<tbody>
                <tr>
                  <td>4</td>
                  <td>Nombre del Cliente</td>
                  <td>4</td>
                  <td>31/03/2017 - 13:00</td>
                  <td>En Proceso</td>
                  <td>S/. 40.00</td>
                  <td>
                      <button type="button" class="btn btn-success btn-xs" data-toggle="tooltip" data-placement="bottom" title="Reserva éxitosa">
                        <span class="glyphicon glyphicon-usd"></span>
                      </button>
                      <button type="button" class="btn btn-primary btn-xs" data-toggle="tooltip" data-placement="bottom" title="Ver Detalle de Reserva">
                        <span class="glyphicon glyphicon-search"></span>
                      </button>
                      <button type="button" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="bottom" title="Cancelar Reserva">
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