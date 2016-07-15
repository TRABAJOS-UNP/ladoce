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
	
	
	
	
	public void guardar(){}
	
	public void modificar(){}
	
	public void desabilitar(){}
	
	public void set_tipo(){}
		
	public void buscar(){}



	public Usuario autenticacion(String email, String pass) throws SQLException {
		this.user=null;
		this.conectar();
		
		this.sta=this.conexion.createStatement();
		this.rs=null; 
		ParametrosDAO ps=new ParametrosDAO();
		String codigo_parametro="";
		ps.consultar_parametros();
		
		int contador=0;
		boolean encontro=false;
		while(contador<(ps.getParametros().size())&& !encontro){
			if(ps.getParametros().get(contador).getDescripcion_corta().equals("Habilitado"))
				{encontro=true;
				
				codigo_parametro=ps.getParametros().get(contador).getCodigo();
				}
			contador++;
		}
		codigo_parametro="0001";
		if(!codigo_parametro.equals("")){
			String consulta="CALL AutenticarUsuario('"+email+"','"+pass+"','"+codigo_parametro+"');" ;
			rs=sta.executeQuery(consulta);
		
			while(rs.next()){
				//if(rs.getString("estado").equals(codigo_parametro)){
					if( email.equals(rs.getString("email"))&& pass.equals(rs.getString("password") )){
						user=new Usuario( 	this.rs.getString("email"),
											this.rs.getString("password"),
											this.rs.getString("nombres"),
											this.rs.getString("apellidos"),
											this.rs.getString("celular"),
											this.rs.getString("DNI"),
											this.rs.getString("estado"),
											this.rs.getString("tipo"));			
				//}	
				}
			}
		}
		this.cerrarConexion();
		return user;
	}
	
}
