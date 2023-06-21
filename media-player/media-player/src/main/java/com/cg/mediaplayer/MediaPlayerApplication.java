package com.cg.mediaplayer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class MediaPlayerApplication {

	public static void main(String[] args) {
		SpringApplication.run(MediaPlayerApplication.class, args);
	}

}
