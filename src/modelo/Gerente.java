package modelo;

public class Gerente {
	private int idGerente;
	private String estado;
	private int idUsuario;
	private Usuario usuario;
	public int getIdGerente() {
		return idGerente;
	}
	public void setIdGerente(int idGerente) {
		this.idGerente = idGerente;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
}
