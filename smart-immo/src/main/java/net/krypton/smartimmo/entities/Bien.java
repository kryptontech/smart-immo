package net.krypton.smartimmo.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
public class Bien implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 3843757196622859693L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_bien")
	private int idBien;
	private String titreBien;
	private double superficieBien;
	private double prixBien;
	private String quartierBien;
	private String descriptionBien;
	private int nbPieceBien;
	private String statutBien;
	private Date datePubBien;
	
	
	private Fournisseur fournisseur;

	
	
	private Commune commune;
	
	
	private Disponibilite disponibilite;
	
	
	private TypeOffre typeoffre;
	
	
	private SousCategorie souscategorie;

	public int getIdBien() {
		return idBien;
	}

	public void setIdBien(int idBien) {
		this.idBien = idBien;
	}

	public String getTitreBien() {
		return titreBien;
	}

	public void setTitreBien(String titreBien) {
		this.titreBien = titreBien;
	}

	public double getSuperficieBien() {
		return superficieBien;
	}

	public void setSuperficieBien(double superficieBien) {
		this.superficieBien = superficieBien;
	}

	public double getPrixBien() {
		return prixBien;
	}

	public void setPrixBien(double prixBien) {
		this.prixBien = prixBien;
	}

	public String getQuartierBien() {
		return quartierBien;
	}

	public void setQuartierBien(String quartierBien) {
		this.quartierBien = quartierBien;
	}

	public String getDescriptionBien() {
		return descriptionBien;
	}

	public void setDescriptionBien(String descriptionBien) {
		this.descriptionBien = descriptionBien;
	}

	public int getNbPieceBien() {
		return nbPieceBien;
	}

	public void setNbPieceBien(int nbPieceBien) {
		this.nbPieceBien = nbPieceBien;
	}

	public String getStatutBien() {
		return statutBien;
	}

	public void setStatutBien(String statutBien) {
		this.statutBien = statutBien;
	}

	
	@ManyToOne(fetch = FetchType.EAGER , cascade=CascadeType.ALL)
	@JoinColumn(name="id_fournisseur")
	public Fournisseur getFournisseur() {
		return fournisseur;
	}

	public void setFournisseur(Fournisseur fournisseur) {
		this.fournisseur = fournisseur;
	}



	@ManyToOne(fetch = FetchType.EAGER , cascade=CascadeType.ALL)
	@JoinColumn(name="id_commune")
	public Commune getCommune() {
		return commune;
	}

	public void setCommune(Commune commune) {
		this.commune = commune;
	}

	
	@ManyToOne(fetch = FetchType.EAGER , cascade=CascadeType.ALL)
	@JoinColumn(name="id_disponibilite")
	public Disponibilite getDisponibilite() {
		return disponibilite;
	}

	public void setDisponibilite(Disponibilite disponibilite) {
		this.disponibilite = disponibilite;
	}

	
	@ManyToOne(fetch = FetchType.EAGER , cascade=CascadeType.ALL)
	@JoinColumn(name="id_typeoffre")
	public TypeOffre getTypeoffre() {
		return typeoffre;
	}

	public void setTypeoffre(TypeOffre typeoffre) {
		this.typeoffre = typeoffre;
	}

	
	@ManyToOne(fetch = FetchType.EAGER , cascade=CascadeType.ALL)
	@JoinColumn(name="id_souscategorie")
	public SousCategorie getSouscategorie() {
		return souscategorie;
	}

	public void setSouscategorie(SousCategorie souscategorie) {
		this.souscategorie = souscategorie;
	}

	public Bien(String titreBien, double superficieBien, int prixBien, String quartierBien, String descriptionBien,
			int nbPieceBien, String statutBien, Date datePubBien) {
		super();
		this.titreBien = titreBien;
		this.superficieBien = superficieBien;
		this.prixBien = prixBien;
		this.quartierBien = quartierBien;
		this.descriptionBien = descriptionBien;
		this.nbPieceBien = nbPieceBien;
		this.statutBien = statutBien;
	}

	public Bien() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return getTitreBien();
	}
	
	public Date getDatePubBien() {
		return datePubBien;
	}

	public void setDatePubBien(Date datePubBien) {
		this.datePubBien = datePubBien;
	}
	
	
}
