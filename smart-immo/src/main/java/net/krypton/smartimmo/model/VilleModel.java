package net.krypton.smartimmo.model;

public class VilleModel {

	private String idVille;
	private String libelleVille;

	private String region;

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
