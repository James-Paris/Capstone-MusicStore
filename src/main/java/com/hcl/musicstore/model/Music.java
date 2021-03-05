package com.hcl.musicstore.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Music {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String songName;

	private String artist;

	private String album;

	private Double price;

	private String description;

	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date releaseDate;

	private String genre;

	public Music() {
		
	}
	
	public Music(String songName, String artist, String album, Double price, String description,
			Date releaseDate, String genre) {
		super();
		this.songName = songName;
		this.artist = artist;
		this.album = album;
		this.price = price;
		this.description = description;
		this.releaseDate = releaseDate;
		this.genre = genre;
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSongName() {
		return songName;
	}

	public void setSongName(String songName) {
		this.songName = songName;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	@Override
	public String toString() {
		return "Music [id=" + id + ", songName=" + songName + ", artist=" + artist + ", album=" + album + ", price="
				+ price + ", description=" + description + ", releaseDate=" + releaseDate + ", genre=" + genre + "]";
	}


	
	
}
