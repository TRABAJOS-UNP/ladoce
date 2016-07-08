package Controlador;

import com.opensymphony.xwork2.ActionSupport;

import modelo.persona;

public class controlador extends ActionSupport{
	persona p;
	String email;
	String pass;
 public persona getP() {
		return p;
	}
	public void setP(persona p) {
		this.p = p;
		this.p.setEmail(email);
		this.p.setPass(pass);
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
public String execute(){
	 p=new persona();
	 p.setEmail(email);
	 p.setPass(pass);
	 return SUCCESS;
 }
 
}
