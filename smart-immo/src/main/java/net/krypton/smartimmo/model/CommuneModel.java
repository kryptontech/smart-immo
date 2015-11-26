package net.krypton.smartimmo.model;

import org.hibernate.validator.constraints.NotEmpty;

public class CommuneModel {
	
	
	private String idCommune;
	
	private String libelleCommune;
	@NotEmpty
	private String ville;
	
	private String exception;
	
	
	
	public String getException() {
		return exception;
	}
	public void setException(String exception) {
		this.exception = exception;
	}
	public String getIdCommune() {
		return idCommune;
	}
	public void setIdCommune(String idCommune) {
		this.idCommune = idCommune;
	}
	public String getLibelleCommune() {
		return libelleCommune;
	}
	public void setLibelleCommune(String libelleCommune) {
		this.libelleCommune = libelleCommune;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public CommuneModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

}
