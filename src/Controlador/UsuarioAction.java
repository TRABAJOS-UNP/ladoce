package Controlador;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;

import modelo.Usuario;
import modeloDAO.UsuarioDAO;

public class UsuarioAction extends ActionSupport implements SessionAware{

	String email;
	String pass;
	
	private Map<String,Object> session;
	@Override
	public void setSession(Map<String, Object> map) {
		this.session=map; 
		
	}
	public Map<String, Object> getSession() {
		return session; 
		
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public String conectar() {
		UsuarioDAO user_conexion=new UsuarioDAO();
		Usuario user=null;
		try {
			user=user_conexion.autenticacion(email, pass);
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
                  
                    return SUCCESS;      
         }
       return INPUT; 
}
	
public String desconectar()throws Exception{
	this.getSession().clear();
	return SUCCESS;
}

	
}
