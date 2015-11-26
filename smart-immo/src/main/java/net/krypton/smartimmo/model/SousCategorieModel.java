package net.krypton.smartimmo.model;

import org.hibernate.validator.constraints.NotEmpty;

public class SousCategorieModel {

	
	private String idSousCat;
	@NotEmpty
	private String libelleSousCat;
	@NotEmpty
	private String categorie;

	
	private String exception;
	
	
	public String getException() {
		return exception;
	}

	public void setException(String exception) {
		this.exception = exception;
	}

	public String getIdSousCat() {
		return idSousCat;
	}

	public void setIdSousCat(String idSousCategorie) {
		this.idSousCat = idSousCategorie;
	}

	public String getLibelleSousCat() {
		return libelleSousCat;
	}

	public void setLibelleSousCat(String libelleSousCategorie) {
		this.libelleSousCat = libelleSousCategorie;
	}

	public String getCategorie() {
		return categorie;
	}

	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}

	public SousCategorieModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SousCategorieModel(String idSousCat, String libelleSousCat, String categorie) {
		super();
		this.idSousCat = idSousCat;
		this.libelleSousCat = libelleSousCat;
		this.categorie = categorie;
	}
	
	
}
