package modeloDAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import modelo.Parametros;
import modelo.Usuario;
import modelo.conexion;

public class UsuarioDAO extends conexion{
	
	private Usuario user;
	private Statement sta;
	private ResultSet  rs;
	String idUsuario;
	String tipo;
	
	public void guardar(){}
	
	public void modificar(){}
	
	public void desabilitar(){}
	
	public void set_tipo(){}
		
	public void buscar(){}

	public Usuario autenticacion(String email, String pass) throws SQLException {
		this.user=null;
		this.rs=null; 
		ParametrosDAO ps=new ParametrosDAO();
		ps.consultar_parametros();
		String codigo_parametro=ps.buscar("Habilitado");
		this.conectar("seguridad");
		if(!codigo_parametro.equals(""))
		{	String consulta="CALL AutenticarUsuario('"+email+"','"+pass+"','"+codigo_parametro+"');" ;
			rs=this.consultar(consulta);
		
			while(rs.next()){
				if( email.equals(rs.getString("email"))&& pass.equals(rs.getString("password") ))
				{	this.idUsuario=rs.getString("idUsuario");
					this.tipo=rs.getString("tipo"); 
					this.cerrarConexion();
					this.conectar("bdla12");
					consulta="select * from Persona where idUsuario="+idUsuario;
					rs=this.consultar(consulta);
					while(rs.next())
					{	user=new Usuario( 	email,
											pass,
											this.rs.getString("nombres"),
											this.rs.getString("apellidos"),
											this.rs.getString("celular"),
											this.rs.getString("DNI"),
											tipo);	
					}
				}
			}
		}
		this.cerrarConexion();
		return user;
	}
	
	
}
