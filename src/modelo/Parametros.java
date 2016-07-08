package modelo;

public class Parametros {
		private char codigo;
		private String descripcion;
		private String descripcion_corta;
		private String valor;
		public Parametros(char cod,String des,String des_c,String valor){
			this.codigo=cod;
			this.descripcion=des;
			this.descripcion_corta=des_c;
			this.valor=valor;
		}
		public char getCodigo() {
			return codigo;
		}
		public void setCodigo(char codigo) {
			this.codigo = codigo;
		}
		public String getDescripcion() {
			return descripcion;
		}
		public void setDescripcion(String descripcion) {
			this.descripcion = descripcion;
		}
		public String getDescripcion_corta() {
			return descripcion_corta;
		}
		public void setDescripcion_corta(String descripcion_corta) {
			this.descripcion_corta = descripcion_corta;
		}
		public String getValor() {
			return valor;
		}
		public void setValor(String valor) {
			this.valor = valor;
		}
		
}
