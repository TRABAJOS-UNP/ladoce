package modeloDAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import modelo.Cliente;
import modelo.conexion;

public class ClienteDAO extends conexion{
	private Cliente cliente;
	private Statement sta;
	private ResultSet  rs;
	
	public int guardar(String email,String password,String nombres, String apellidos, String celular, String dni) throws SQLException {
		int error=0;
		ParametrosDAO ps=new ParametrosDAO();
		ps.consultar_parametros();
		String estado=ps.buscar("Habilitado");
		String tipo=ps.buscar("Cliente");
		this.conectar("seguridad");
		String consulta="SELECT * FROM usuario WHERE email="+"'"+email+"'" ;
		this.rs=this.consultar(consulta);
		
		if(!rs.next())
		{	this.cerrarConexion();
			this.conectar("bdla12");
			consulta="SELECT * FROM Persona WHERE DNI="+"'"+dni+"'" ;
			this.rs=this.consultar(consulta);
			if(!rs.next())
			{
				this.cerrarConexion();
				this.conectar("seguridad");
				consulta="CALL CrearUsuario('"+email+"','"+password+"','"+tipo+"','"+estado+"');" ;
				this.actualizar(consulta);
				consulta="SELECT * FROM usuario WHERE email="+"'"+email+"'" ;
				this.rs=this.consultar(consulta);
				rs.next();
				int idUsuario =Integer.parseInt(rs.getString("idUsuario"));
				this.cerrarConexion();
				this.conectar("bdla12");
				consulta="CALL CrearCliente('"+nombres+"','"+apellidos+"','"+celular+"','"+dni+"','"+idUsuario+"');" ;
				this.actualizar(consulta);
			}else error=2;
		}else error=1;
		this.cerrarConexion();
		
		return error;
	}

}
