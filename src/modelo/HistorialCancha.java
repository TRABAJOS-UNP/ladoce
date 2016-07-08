package modelo;

import java.sql.Date;

public class HistorialCancha {
	private int idHistorialCancha;
	private Date inicio;
	private Date fin;
	private String estado;
	private int idCancha;
	private Cancha cancha;
	public int getIdHistorialCancha() {
		return idHistorialCancha;
	}
	public void setIdHistorialCancha(int idHistorialCancha) {
		this.idHistorialCancha = idHistorialCancha;
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
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public int getIdCancha() {
		return idCancha;
	}
	public void setIdCancha(int idCancha) {
		this.idCancha = idCancha;
	}
	public Cancha getCancha() {
		return cancha;
	}
	public void setCancha(Cancha cancha) {
		this.cancha = cancha;
	}
}
