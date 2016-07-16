package modelo;

import java.io.Serializable;

public class Usuario implements Serializable{
	private int idUsuario;
	private  String email;
	private  String password;
	private  String nombres;
	private  String apellidos;
	private  String celular;
	private  String dni;
	private  String estado;
	private String nivel;
public Usuario() {
	
	}
	public Usuario(String mail,String pass,String nom,String ap,String cel,String d,String n) {
		
		email=mail;
		 password=pass;
		nombres=nom;
		apellidos=ap;
		celular=cel;
		dni=d;

		 nivel=n;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getCelular() {
		return celular;
	}
	public void setCelular(String celular) {
		this.celular = celular;
	}
	public String getDni() {
		return dni;
	}
	public void setDni(String dni) {
		this.dni = dni;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getNivel() {
		return nivel;
	}
	public void setNivel(String nivel) {
		this.nivel = nivel;
	}
}
	