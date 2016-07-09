package modelo;

public class Parametros {
	
		private String codigo;
		private String descripcion;
		private String descripcion_corta;
		private String valor;
		
		
		
		public Parametros(String cod,String des_c,String des,String valor){
			this.codigo=cod;
			this.descripcion=des;
			this.descripcion_corta=des_c;
			this.valor=valor;
		}
		public String getCodigo() {
			return codigo;
		}
		public void setCodigo(String codigo) {
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
