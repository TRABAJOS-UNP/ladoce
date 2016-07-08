package modelo;

import java.sql.Date;

public class HistorialGerente {
	private int idHistorialGerente;
	private Date inicio;
	private Date fin;
	private int idGerente;
	private Gerente gerente;
	public int getIdHistorialGerente() {
		return idHistorialGerente;
	}
	public void setIdHistorialGerente(int idHistorialGerente) {
		this.idHistorialGerente = idHistorialGerente;
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
	public int getIdGerente() {
		return idGerente;
	}
	public void setIdGerente(int idGerente) {
		this.idGerente = idGerente;
	}
	public Gerente getGerente() {
		return gerente;
	}
	public void setGerente(Gerente gerente) {
		this.gerente = gerente;
	}
}
