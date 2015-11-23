package net.krypton.smartimmo.entities;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class User implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 5174521156927540844L;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_user")
	private int idUser;
	private String nomUser;
	private String prenomUser;
	private String pseudoUser;
	private int statuUser;
	private String mdpUser;
	private String mailUser;
	
	
	private Admin admin;
	
	
	
	public int getStatuUser() {
		return statuUser;
	}

	public void setStatuUser(int statuUser) {
		this.statuUser = statuUser;
	}

	public User(String nomUser, String prenomUser, String pseudoUser, String mdpUser, String mailUser) {
		super();
		this.nomUser = nomUser;
		this.prenomUser = prenomUser;
		this.pseudoUser = pseudoUser;
		this.mdpUser = mdpUser;
		this.mailUser = mailUser;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public String getNomUser() {
		return nomUser;
	}

	public void setNomUser(String nomUser) {
		this.nomUser = nomUser;
	}

	public String getPrenomUser() {
		return prenomUser;
	}

	public void setPrenomUser(String prenomUser) {
		this.prenomUser = prenomUser;
	}

	public String getPseudoUser() {
		return pseudoUser;
	}

	public void setPseudoUser(String pseudoUser) {
		this.pseudoUser = pseudoUser;
	}

	public String getMdpUser() {
		return mdpUser;
	}

	public void setMdpUser(String mdpUser) {
		this.mdpUser = mdpUser;
	}

	public String getMailUser() {
		return mailUser;
	}

	public void setMailUser(String mailUser) {
		this.mailUser = mailUser;
	}

	
	@ManyToOne(fetch = FetchType.EAGER , cascade=CascadeType.ALL)
	@JoinColumn(name="id_admin")
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}