package modeloDAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import modelo.Parametros;
import modelo.Usuario;
import modelo.conexion;

public class ParametrosDAO extends conexion{
	private Parametros p;
	private Statement sta;
	private ResultSet  rs;
	public static ArrayList <Parametros> parametros=new ArrayList();
	
	public void consultar_parametros() throws SQLException{
	
		this.p=null;
		this.conectar();

		this.sta=this.conexion.createStatement();
		this.rs=null; 
		String consulta="select * from parametro" ;
		rs=sta.executeQuery(consulta);
		
		while(rs.next()){
					p=new Parametros( 	this.rs.getString("codigo"),
										this.rs.getString("descripcioncorta"),
										this.rs.getString("descripcion"),
										this.rs.getString("valor"));			
					parametros.add(p);
			
		}
		this.cerrarConexion();
	}

	public ArrayList<Parametros> getParametros() {
		return parametros;
	}
	

}
