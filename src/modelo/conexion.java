package modelo;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.exceptions.MySQLDataException;

public class conexion {
	protected Statement sta;
	private final String servidor="localhost";
	private final String usuario="root";
	private final String contrasenia="root";
	private final String portNumber="3306";
	private String databaseName="bdla12";
	protected Connection conexion=null;
	
	
	private String url;
	private ResultSet respuesta;
	
	public conexion()
	{}
	public void conectar(String bd){
		this.databaseName=bd;
		url="jdbc:mysql://"+servidor+":"+portNumber+"/"+databaseName;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			conexion=(Connection)DriverManager.getConnection(url, usuario, contrasenia);
			sta=conexion.createStatement();
			System.out.println("Conexion Establecida");
		}
		catch(ClassNotFoundException ex)
		{
			System.out.println("No se encontró la clase para la conexión de base de datos");
		}
		catch(MySQLDataException ex)
		{
			System.out.println("Error en MySqlDataException");
		}
		catch(SQLException ex)
		{
			System.out.println("Error en Driver Manager");
		}
		catch(Exception ex)
		{
			System.out.println("Ocurrió un error inesperado en la conexión");
		}
	}
	
	public void cerrarConexion()
	{
		if(conexion!=null)
		{
			try
			{	sta.close();
				conexion.close();
				conexion=null;
			}
			catch(Exception ex)
			{
				System.out.println("No se pudo cerrar la conexión");
			}
		}
	}
	public ResultSet consultar(String consulta) throws SQLException{
		
		this.sta=this.conexion.createStatement();
		respuesta=this.sta.executeQuery(consulta);
		
		return respuesta;
	} 
	public void actualizar(String consulta) throws SQLException{
		
		this.sta=this.conexion.createStatement();
		this.sta.executeUpdate(consulta);
	} 
}
