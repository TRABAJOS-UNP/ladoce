package modelo;

import java.sql.Date;

public class Dirige {
	private int idDirige;
	private Date inicio;
	private Date fin;
	private int idSede;
	private Sede sede;
	private int idOperador;
	private Operador operador;
	public int getIdDirige() {
		return idDirige;
	}
	public void setIdDirige(int idDirige) {
		this.idDirige = idDirige;
	}
	public Date getInicio() {
		return inicio;
	}
	public void setInicio(Date inicio) {
		this.inicio = inicio;
	}
	public Date getFin() {
		return fin;
	}
	public void setFin(Date fin) {
		this.fin = fin;
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
	public int getIdOperador() {
		return idOperador;
	}
	public void setIdOperador(int idOperador) {
		this.idOperador = idOperador;
	}
	public Operador getOperador() {
		return operador;
	}
	public void setOperador(Operador operador) {
		this.operador = operador;
	}
}
