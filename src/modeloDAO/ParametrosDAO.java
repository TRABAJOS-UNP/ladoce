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
	
	public void consultar_parametros() throws SQLException
	{	this.p=null;
		this.conectar("bdla12");
		String consulta="CALL ConsultarParametros()" ;
		rs=this.consultar(consulta);
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
	
	public static String buscar(String descripcion){
		int contador=0;
		String valor="";
		boolean encontro=false;
		while(contador<(ParametrosDAO.parametros.size())&& !encontro){
			if(ParametrosDAO.parametros.get(contador).getDescripcion_corta().equals(descripcion))
			{	encontro=true;
				valor=ParametrosDAO.parametros.get(contador).getCodigo();
			}
			contador++;
		}
		return valor;
	}
	

}
