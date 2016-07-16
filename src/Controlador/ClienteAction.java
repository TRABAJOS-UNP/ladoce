package Controlador;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import modelo.Usuario;
import modeloDAO.ClienteDAO;
import modeloDAO.UsuarioDAO;

public class ClienteAction extends ActionSupport implements SessionAware{
	private  String email;
	private  String password;
	private  String nombres;
	private  String apellidos;
	private  String celular;
	private  String dni;
	
	private Map<String,Object> session;
	
	public String agregar_cliente(){
		int respuesta;
		String r=INPUT;
		ClienteDAO c=new ClienteDAO();
		try {
			respuesta=c.guardar(email,password,nombres, apellidos, celular, dni);
			if(respuesta==1){
				addFieldError("email", "Email ya existe");
			
			}else if(respuesta==2){
				addFieldError("dni", "ya se registraron con tu DNI");
			}
			else{
				UsuarioDAO user_conexion=new UsuarioDAO();
				Usuario user=null;
			try {
				user=user_conexion.autenticacion(email, password);
			} catch (SQLException e) {
				e.printStackTrace();		
			}
			if(user!=null) 
	        {           this.session.put("autenticacion", true); 
	                    this.session.put("nombres", user.getNombres());
	                    this.session.put("apellidos", user.getApellidos());
	                    this.session.put("email", user.getEmail());
	                    this.session.put("celular", user.getCelular());
	                    this.session.put("dni", user.getDni());
	                    this.session.put("tipo", user.getNivel());
	                    r=SUCCESS;
	        }
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return r;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	@Override
	public void setSession(Map<String, Object> arg0) {
		this.session=arg0; // TODO Auto-generated method stub
		
	}
}
