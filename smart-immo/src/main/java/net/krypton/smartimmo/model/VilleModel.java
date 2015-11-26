package net.krypton.smartimmo.model;

import org.hibernate.validator.constraints.NotEmpty;

public class VilleModel {

	private String idVille;
	@NotEmpty
	private String libelleVille;

	@NotEmpty
	private String region;
	
	private String exception;
	
	

	public String getException() {
		return exception;
	}


	public void setException(String exception) {
		this.exception = exception;
	}


	public VilleModel(String idVille, String libelleVille, String region) {
		super();
		this.idVille = idVille;
		this.libelleVille = libelleVille;
		this.region = region;
	}
	

	public VilleModel() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getIdVille() {
		return idVille;
	}

	public void setIdVille(String idVille) {
		this.idVille = idVille;
	}

	public String getLibelleVille() {
		return libelleVille;
	}

	public void setLibelleVille(String libelleVille) {
		this.libelleVille = libelleVille;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

}
