package modelo;

import java.sql.Time;

public class DetalleReserva {
	private int idDetalleReserva;
	private Time horaInicio;
	private Time horafin;
	private double subTotal;
	private int idReserva;
	private Reserva reserva;
	public int getIdDetalleReserva() {
		return idDetalleReserva;
	}
	public void setIdDetalleReserva(int idDetalleReserva) {
		this.idDetalleReserva = idDetalleReserva;
	}
	public Time getHoraInicio() {
		return horaInicio;
	}
	public void setHoraInicio(Time horaInicio) {
		this.horaInicio = horaInicio;
	}
	public Time getHorafin() {
		return horafin;
	}
	public void setHorafin(Time horafin) {
		this.horafin = horafin;
	}
	public double getSubTotal() {
		return subTotal;
	}
	public void setSubTotal(double subTotal) {
		this.subTotal = subTotal;
	}
	public int getIdReserva() {
		return idReserva;
	}
	public void setIdReserva(int idReserva) {
		this.idReserva = idReserva;
	}
	public Reserva getReserva() {
		return reserva;
	}
	public void setReserva(Reserva reserva) {
		this.reserva = reserva;
	}
}
