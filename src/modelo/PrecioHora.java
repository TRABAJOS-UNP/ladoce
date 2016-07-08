package modelo;

import java.sql.Time;

public class PrecioHora {
	private int idPrecioHora;
	private String diaSemana;
	private Time horaInicio;
	private Time horaFin;
	private double precio;
	private String estado;
	public int getIdPrecioHora() {
		return idPrecioHora;
	}
	public void setIdPrecioHora(int idPrecioHora) {
		this.idPrecioHora = idPrecioHora;
	}
	public String getDiaSemana() {
		return diaSemana;
	}
	public void setDiaSemana(String diaSemana) {
		this.diaSemana = diaSemana;
	}
	public Time getHoraInicio() {
		return horaInicio;
	}
	public void setHoraInicio(Time horaInicio) {
		this.horaInicio = horaInicio;
	}
	public Time getHoraFin() {
		return horaFin;
	}
	public void setHoraFin(Time horaFin) {
		this.horaFin = horaFin;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
}
