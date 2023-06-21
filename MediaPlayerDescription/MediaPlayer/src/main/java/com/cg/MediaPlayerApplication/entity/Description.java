package com.cg.MediaPlayerApplication.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Transient;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name="Description")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Description {
	
	public Description(String title, String description) {
		this.title=title;
		this.description=description;
	}
	public Description(int desId, String title, String language, String description) {
	this.title=title;
	this.language=language;
	this.description=description;
	this.desId=desId;
	}
	@Id
	@GeneratedValue
	private int desId;
	private String title;
	private String language;
	private String description;
	private int videoId;
	
	@Transient
	private List<Tag> tag;
	
	
}