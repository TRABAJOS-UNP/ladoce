package modelo;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.exceptions.MySQLDataException;


public class conexion {
	protected Statement sta;
	private final String servidor="localhost";
	private final String usuario="root";
	private final String contrasenia="";
	protected Connection conexion=null;
	private String portNumber="3306";
	private String databaseName="ladoce";
	private String url="jdbc:mysql://localhost:3306/"+databaseName;
	
	public conexion()
	{}
	public void conectar(){
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
	

	
	
	
}
