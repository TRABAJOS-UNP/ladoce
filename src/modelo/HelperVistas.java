package modelo;

import java.util.Map;

import javax.servlet.http.HttpSession;

import modeloDAO.ParametrosDAO;




public class HelperVistas {
	private static String PROJECT_NAME = "/ladoce";
 public HelperVistas() {
		 
	 }
	 
	 
	 
	 
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
		return "<link href='"+PROJECT_NAME+"/bootstrap/css/bootstrap.min.css' rel='stylesheet'>"
				+"<link href='"+PROJECT_NAME+"/bootstrap/css/style.css' rel='stylesheet'>"
				;
	}
	public static String getScripts(){
		return "<script src='"+PROJECT_NAME+"/bootstrap/js/jquery.min.js'></script>"
				+"<script src='"+PROJECT_NAME+"/bootstrap/js/bootstrap.min.js'></script>"
  				+"<script src='"+PROJECT_NAME+"/bootstrap/js/myapp.js'></script>"
				;
	}
	public  static String getNavbar(HttpSession a){
	
		String funciones="";
		if(a.getAttribute("tipo")!=null){
			String NombreUsuario=a.getAttribute("nombres").toString();
			String tipo=a.getAttribute("tipo").toString();
			if(tipo.equals("0001")){
				funciones= " <ul class='nav navbar-nav navbar-right'>"
						+ "<li class='dropdown'>"
						+ "<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>"
						+ "<span class='glyphicon glyphicon-user'></span> "+NombreUsuario+"<span class='caret'></span>"
						+ "</a>"
						+ "<ul class='dropdown-menu'>"
						+ "<li><a href='#'>MisReservas</a></li>"
						+ "<li role='separator' class='divider'></li>"
						+ "<li><a href='cerrar.action'>Cerrar Sessión</a></li>"
						+ "</ul>"
						+ "</li>"
						+ "</ul>"+"</div>"+
						"</div>"+
					    "</nav>";
			}
			if(tipo.equals("0002")){
				funciones= " <ul class='nav navbar-nav navbar-right'>"
						+ "<li class='dropdown'>"
						+ "<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>"
						+ "<span class='glyphicon glyphicon-user'></span> "+NombreUsuario+"<span class='caret'></span>"
						+ "</a>"
						+ "<ul class='dropdown-menu'>"
						+ "<li><a href='#'>Perfil</a></li>"
						+ "<li><a href='canchas.action'>Canchas</a></li>"
						+ "<li role='separator' class='divider'></li>"
						+ "<li><a href='cerrar.action'>Cerrar Sessión</a></li>"
						+ "</ul>"
						+ "</li>"
						+ "</ul>"+"</div>"+
						"</div>"+
					    "</nav>";
			}
			if(tipo.equals("0003")){
				funciones= " <ul class='nav navbar-nav navbar-right'>"
						+ "<li class='dropdown'>"
						+ "<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>"
						+ "<span class='glyphicon glyphicon-user'></span> "+NombreUsuario+"<span class='caret'></span>"
						+ "</a>"
						+ "<ul class='dropdown-menu'>"
						+ "<li><a href='#'>Perfil</a></li>"
						+ "<li><a href='operadores.action'>Operadores</a></li>"
						+ "<li role='separator' class='divider'></li>"
						+ "<li><a href='cerrar.action'>Cerrar Sessión</a></li>"
						+ "</ul>"
						+ "</li>"
						+ "</ul>"+"</div>"+
						"</div>"+
					    "</nav>";
				
			}
		
		}
		//si no esta logeado
		else{
			funciones="<ul class='nav navbar-nav navbar-right'>"+
							"<li>"+
								"<a href='iniciar_sesion.action'>Iniciar Sesión</a>"+
							"</li>"+
						"</ul>"+
					"</div>"+
				"</div>"+
	    "</nav>";
		}
		String navbar = 
		"<nav class='navbar navbar-inverse'>"+
				"<div class='container-fluid'>"+
					"<div class='navbar-header'>"+
						"<button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#navbar1' aria-expanded='false'>"+
							"<span class='sr-only'>Toggle navigation</span>"+
							"<span class='icon-bar'></span>"+
							"<span class='icon-bar'></span>"+
							"<span class='icon-bar'></span>"+
						"</button>"+
						"<a class='navbar-brand' href='home.action'>"+
							"<img alt='LogoLa12' src=''>"+
						"</a>"+
					"</div>"+
					"<div class='collapse navbar-collapse' id='navbar1'>"+
						"<ul class='nav navbar-nav'>"+
							"<li class='active'><a href='home.action'>Home <span class='sr-only'>(current)</span></a></li>"+
							"<li><a href='sedes.action'>Sedes</a></li>"+
						"</ul>"+funciones;
		return navbar;
	}



	
}
