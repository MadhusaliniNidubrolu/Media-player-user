package com.cg.mediaplayersecurity.dto;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class AuthRequest {
	
	@Id
	@GeneratedValue
	private int logId;
	
	private String name;
	
	private String password;

}
