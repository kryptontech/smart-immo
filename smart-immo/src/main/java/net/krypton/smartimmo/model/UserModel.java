package net.krypton.smartimmo.model;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class UserModel {

	private String idUser;
	@NotEmpty
	private String nomUser;
	@NotEmpty
	private String prenomUser;
	@NotEmpty
	private String pseudoUser;
	private boolean statuUser;
	@NotEmpty
	@Size(min=8, max=25)
	private String mdpUser;
	@NotEmpty
	private String mailUser;
	@NotEmpty
	private String admin;
	
	private String exception;
	
	public String getException() {
		return exception;
	}
	public void setException(String exception) {
		this.exception = exception;
	}
	public String getAdmin() {
		return admin;
	}
	public void setAdmin(String admin) {
		this.admin = admin;
	}
	public String getIdUser() {
		return idUser;
	}
	public void setIdUser(String idUser) {
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
	public boolean isStatuUser() {
		return statuUser;
	}
	public void setStatuUser(boolean statuUser) {
		this.statuUser = statuUser;
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
	public UserModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
