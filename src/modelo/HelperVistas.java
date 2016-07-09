package modelo;

public class HelperVistas {
	private static String PROJECT_NAME = "ladoce";
	
	public static String alerta(String msg){
		return "<div class='container'>"
					+"<div class='row'>"
						+"<div class='col-xs-10 col-sm-8 col-md-6 no-float center-block'>"
							+"<div class='alert alert-danger text-center'>"
								+"<div class='alert-header'>"
									+"<button type='button' class='close' data-dismiss='alert'>&times;</button>"
								+"</div>"
							+"<div class='alert-body'>"
								+msg
							+"</div>"
						+"</div>"
					+"</div>"
				+"</div>"
			+"</div>";
	}
	public static String exito(String msg){
		return "<div class='container'>"
					+"<div class='row'>"
						+"<div class='col-xs-10 col-sm-8 col-md-6 no-float center-block'>"
							+"<div class='alert alert-success text-center'>"
								+"<div class='alert-header'>"
									+"<button type='button' class='close' data-dismiss='alert'>&times;</button>"
								+"</div>"
							+"<div class='alert-body'>"
								+msg
							+"</div>"
						+"</div>"
					+"</div>"
				+"</div>"
			+"</div>";
	}
	public static String getLinkToCss(){
		return "<link href='/"+PROJECT_NAME+"/bootstrap/css/bootstrap.min.css' rel='stylesheet'>"
				+"<link href='/"+PROJECT_NAME+"/bootstrap/css/style.css' rel='stylesheet'>"
				;
	}
	public static String getScripts(){
		return "<script src='/SistemaReservas/bootstrap/js/jquery.min.js'></script>"
				+"<script src='/SistemaReservas/bootstrap/js/bootstrap.min.js'></script>"
  				+"<script src='/SistemaReservas/bootstrap/js/myapp.js'></script>"
				;
	}
	public static String getNavbar(Usuario usuario){
		
		String navbar = 
		 "<ul class='nav navbar-nav'>"
	          +"<li><a href='/"+PROJECT_NAME+"'>Home <span class='sr-only'>(current)</span></a></li>"
	          +"<li><a href='/"+PROJECT_NAME+"/Sedes/'>Sedes</a></li>"
	    +"</ul>"
	   	+"<ul class='nav navbar-nav navbar-right'>";
		if(usuario==null){
			navbar+="<li><a href='/"+PROJECT_NAME+"/Usuarios/'>Iniciar Sesión</a></li>";
		}else{
			navbar+="<li class='dropdown'>"
			        +"<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>"
				   		+"<span class='glyphicon glyphicon-user'></span>Operador<span class='caret'></span>"
					+"</a>"
			        +"<ul class='dropdown-menu'>"
			            +"<li><a href='#'>Action</a></li>"
			            +"<li><a href='#'>Another action</a></li>"
			            +"<li><a href='#'>Something else here</a></li>"
			            +"<li role='separator' class='divider'></li>"
			            +"<li><a href='#'>Cerrar sesión</a></li>"
			        +"</ul>"
		        +"</li>";
					
		}
	   	navbar+="</ul>";
		return navbar;
	}
	
}
