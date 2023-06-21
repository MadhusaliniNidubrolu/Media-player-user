package com.example.mediaplayerapigateway.filter;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.cloud.gateway.filter.GatewayFilter;
import org.springframework.cloud.gateway.filter.factory.AbstractGatewayFilterFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.client.RestTemplate;

import com.example.mediaplayerapigateway.util.JwtUtil;
import com.google.common.net.HttpHeaders;

import io.netty.handler.codec.http.HttpHeaderDateFormat;

@Component

public class AuthenticationFilter extends AbstractGatewayFilterFactory<AuthenticationFilter.Config> {

	@Autowired
	private RouteValidator validator;
	
//	@Autowired
//	private RestTemplate restTemplate;
	
	@Autowired
	private JwtUtil jwtUtil;

    public static class Config {
        // Configuration properties, if any
    }

 

    public AuthenticationFilter() {
        super(Config.class);
    }

	@Override
	public GatewayFilter apply(Config config) {
		/// TODO Auto-generated method stub
		return ((exchange,chain)->{
			if(validator.isSecured.test(exchange.getRequest())) {
				//header contains token or not
				if(!exchange.getRequest().getHeaders().containsKey(org.springframework.http.HttpHeaders.AUTHORIZATION)) {
					
					throw new RuntimeException("missing authorization headefr");
				}
				String authHeader = exchange.getRequest().getHeaders().get(org.springframework.http.HttpHeaders.AUTHORIZATION).get(0);
				if(authHeader != null && authHeader.startsWith("Bearer ")) {
					authHeader = authHeader.substring(7);
				}
				try {
					//Rest call to Auth service
					
					//restTemplate.getForObject("http://SECURITY-SERVICE/auth/validate?token"+authHeader, String.class);
					jwtUtil.validateToken(authHeader);
				}catch(Exception e)
				{
					System.out.println("Invalid access");
					throw new RuntimeException("un authorize access to application");
				}
			}
			return chain.filter(exchange);
		});
	}

    
}

