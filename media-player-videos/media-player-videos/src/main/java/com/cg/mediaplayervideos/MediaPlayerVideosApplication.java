package com.cg.mediaplayervideos;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
@EnableDiscoveryClient
@CrossOrigin("*")
public class MediaPlayerVideosApplication {

	public static void main(String[] args) {
		SpringApplication.run(MediaPlayerVideosApplication.class, args);
		
		
		
	}
	
	
	

}
