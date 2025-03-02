package com.jsp.ecommerce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.web.client.RestTemplate;

import com.jsp.ecommerce.controller.ConfigProperties;

@SpringBootApplication
@EnableAspectJAutoProxy
@EnableCaching
public class ECommerceApplication {

	public static void main(String[] args) {
		SpringApplication.run(ECommerceApplication.class, args);
		
		
	}
	
	@Bean
	public RestTemplate restTamplate()
	{
		return new RestTemplate();
	}
	
	
	
	

}
