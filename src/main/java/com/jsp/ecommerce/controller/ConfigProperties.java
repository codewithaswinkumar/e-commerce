package com.jsp.ecommerce.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import lombok.Getter;
import lombok.Setter;


//@Component
//@Getter
//public class ConfigProperties
//{
//
//	
//    @Value("${spring.datasource.driver-class-name}")
//	String driverClassName;
//	@Value("${spring.datasource.url}")
//	String url;
//	@Value("${spring.datasource.username}")
//	String user;
//	@Value("${spring.datasource.password}")
//	String password;
//	
//	
//}

@Component
@Getter
@Setter
@ConfigurationProperties("spring.datasource")
public class ConfigProperties  
{
	String driverClassName;
	
	String url;
	
	String user;
	
	String password;
	
	
}
