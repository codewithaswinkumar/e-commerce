package com.jsp.ecommerce;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;


@Configuration
@EnableWebSecurity
@EnableMethodSecurity
public class SecurityConfig
{
    @Bean
    UserDetailsService userDetailsService(PasswordEncoder encoder)
   {
	 UserDetails admin = User.withUsername("aswin")
			                  .password(encoder.encode("madhu"))
			                  .roles("ADMIN")
			                  .build();
	  UserDetails user = User.withUsername("rama")
			                  .password(encoder.encode("chitti"))
			                  .roles("USER")
			                  .build();
	  return new InMemoryUserDetailsManager(admin,user);
   }
	@Bean
    public SecurityFilterChain securityFileChain(HttpSecurity http) throws Exception
    {
    	return http.csrf().disable()
    			    .authorizeHttpRequests()
    			    .antMatchers("/") 
    			    .permitAll()
    			    .and()
    			    .authorizeHttpRequests()
    			    .antMatchers("/MensPageLoad")
    			    .authenticated().and().formLogin().and().build();
    }
	
	@Bean
   public PasswordEncoder passwordEncoder()
   {
	   return new BCryptPasswordEncoder();
   }
   
}
