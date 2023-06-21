package com.cg.mediaplayersecurity.serviceimpl;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.netflix.eureka.registry.Key;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;

@Service
public class JwtService {
	
	public static final String  SECRET = "a449d13233dd9a2ad6b3a587b32f1703a3aecde6b8ea3fb7d4c11c6ec17956f3";
	
	
	public void validateToken(final String token )
	{
		Jwts.parserBuilder().setSigningKey(getSignKey()).build().parseClaimsJws(token);
	}
	public String generateToken(String username)
	{
		Map<String, Object> claim = new HashMap<>();
		return createToken(claim, username);
	}
	
	public String createToken(Map<String, Object> claim, String username)
	{
		return Jwts.builder()
				.setClaims(claim)
				.setSubject(username)
				.setIssuedAt(new Date(System.currentTimeMillis()))
				.setExpiration(new Date(System.currentTimeMillis()+1000*60*30))
				.signWith(getSignKey(), SignatureAlgorithm.HS256).compact();
	}

	
	public java.security.Key getSignKey()
	{
		byte[] keyBytes = Decoders.BASE64.decode(SECRET);
		
		return  Keys.hmacShaKeyFor(keyBytes);
	}
}
