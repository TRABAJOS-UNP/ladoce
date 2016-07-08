package modelo;

import java.sql.Timestamp;

public class HistorialSede {
	private int idHistorialSede;
	private Timestamp inicio;
	private Timestamp fin;
	private String estado;
	private int idSede;
	private Sede sede;
	public int getIdHistorialSede() {
		return idHistorialSede;
	}
	public void setIdHistorialSede(int idHistorialSede) {
		this.idHistorialSede = idHistorialSede;
	}
	public Timestamp getInicio() {
		return inicio;
	}
	public void setInicio(Timestamp inicio) {
		this.inicio = inicio;
	}
	public Timestamp getFin() {
		return fin;
	}
	public void setFin(Timestamp fin) {
		this.fin = fin;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public int getIdSede() {
		return idSede;
	}
	public void setIdSede(int idSede) {
		this.idSede = idSede;
	}
	public Sede getSede() {
		return sede;
	}
	public void setSede(Sede sede) {
		this.sede = sede;
	}
}
