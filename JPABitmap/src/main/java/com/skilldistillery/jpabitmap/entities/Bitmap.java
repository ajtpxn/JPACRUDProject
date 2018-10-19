package com.skilldistillery.jpabitmap.entities;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Bitmap {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String description;
	
	private String bitmapblob;
	
	private LocalDateTime added;
	
	private LocalDateTime deleted;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getBitmapblob() {
		return bitmapblob;
	}

	public void setBitmapblob(String bitmapblob) {
		this.bitmapblob = bitmapblob;
	}

	public LocalDateTime getAdded() {
		return added;
	}

	public void setAdded(LocalDateTime added) {
		this.added = added;
	}

	public LocalDateTime getDeleted() {
		return deleted;
	}

	public void setDeleted(LocalDateTime deleted) {
		this.deleted = deleted;
	}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "Bitmap id: " + id + " name: " + name + " description: " + description + " bitmapblob: " + bitmapblob
				+ " added: " + added + " deleted: " + deleted;
	}
	
	

}
