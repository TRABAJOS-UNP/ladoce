package modeloDAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import modelo.Cliente;
import modelo.conexion;

public class ClienteDAO extends conexion{
	private Cliente cliente;
	private Statement sta;
	
	public void guardar(String email, String password, String nombres, String apellidos, String celular, String dni) throws SQLException {
		this.conectar();
		String consulta="CALL CrearCliente('"+email+"','"+password+"','"+nombres+"','"+apellidos+"','"+celular+"','"+dni+"');" ;
		sta.executeUpdate(consulta);
		this.cerrarConexion();
		
		
	}

}
