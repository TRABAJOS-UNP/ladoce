package Controlador;

import java.sql.SQLException;

import com.opensymphony.xwork2.Action;

import modeloDAO.ClienteDAO;

public class ClienteAction {
	private  String email;
	private  String password;
	private  String nombres;
	private  String apellidos;
	private  String celular;
	private  String dni;
	public void agregar_cliente(){
		String r=Action.ERROR;
		ClienteDAO c=new ClienteDAO();
		try {
			c.guardar(email, password, nombres, apellidos, celular, dni);
			r=Action.SUCCESS;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
