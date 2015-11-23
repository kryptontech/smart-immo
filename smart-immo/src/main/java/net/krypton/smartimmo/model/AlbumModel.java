package net.krypton.smartimmo.model;

public class AlbumModel {

	private int idAlbum;
	private String pathAlbum;

	private String bien;

	public int getIdAlbum() {
		return idAlbum;
	}

	public void setIdAlbum(int idAlbum) {
		this.idAlbum = idAlbum;
	}

	public String getPathAlbum() {
		return pathAlbum;
	}

	public void setPathAlbum(String pathAlbum) {
		this.pathAlbum = pathAlbum;
	}

	public String getBien() {
		return bien;
	}

	public void setBien(String bien) {
		this.bien = bien;
	}

	public AlbumModel() {
		super();
		// TODO Auto-generated constructor stub
	}

	public AlbumModel(String pathAlbum, String bien) {
		super();
		this.pathAlbum = pathAlbum;
		this.bien = bien;
	}
	
	
}
