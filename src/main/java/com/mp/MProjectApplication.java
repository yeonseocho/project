package com.mp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class MProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(MProjectApplication.class, args);
	}

}
