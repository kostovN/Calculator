package view;

import java.io.Serializable;

public class ViewMath implements Serializable{
	private static final long serialVersionUID = -3039003493012267053L;
	
	private String a;
	private String b;
	private String c;
	private String errorA="";
	private String errorB="";
	public ViewMath(String a, String b, String c) {
		super();
		this.a = a;
		this.b = b;
		this.c = c;
	}
	public ViewMath() {
		super();
		a="0";
		b="0";
		c="0";
	}
	public String getA() {
		return a;
	}
	public void setA(String a) {
		this.a = a;
	}
	public String getB() {
		return b;
	}
	public void setB(String b) {
		this.b = b;
	}
	public String getC() {
		return c;
	}
	public void setC(String c) {
		this.c = c;
	}
	public String getErrorA() {
		return errorA;
	}
	public void setErrorA(String errorA) {
		this.errorA = errorA;
	}
	public String getErrorB() {
		return errorB;
	}
	public void setErrorB(String errorB) {
		this.errorB = errorB;
	}
	
	
	

}
