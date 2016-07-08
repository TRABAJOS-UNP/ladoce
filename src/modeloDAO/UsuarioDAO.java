package modeloDAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import modelo.Usuario;
import modelo.conexion;

public class UsuarioDAO extends conexion{
	
	Usuario user;
	Statement sta;
	ResultSet  rs;
	
	
	
	
	public void agregar(){}
	
	public void modificar(){}
	
	public void desabilitar(){}
	
	public void set_tipo(){}
		
	public void buscar(){}



	public Usuario autenticacion(String email, String pass) throws SQLException {
		this.user=null;
		this.conectar();
		
		this.sta=this.conexion.createStatement();
		this.rs=null; 
		String consulta="select * from Usuario where email='"+email+"' and password='"+pass+"'" ;
		rs=sta.executeQuery(consulta);
		
		
		
		while(rs.next()){
			if(rs.getString("estado").equals("h")){
				if( email.equals(rs.getString("email"))&& pass.equals(rs.getString("password") )){
					user=new Usuario( 	this.rs.getString("email"),
										this.rs.getString("password"),
										this.rs.getString("nombres"),
										this.rs.getString("apellidos"),
										this.rs.getString("celular"),
										this.rs.getString("DNI"),
										this.rs.getString("estado").charAt(0),
										this.rs.getString("tipo").charAt(0));			
				}	
			}
		}
		this.cerrarConexion();
		return user;
	}
	
}
