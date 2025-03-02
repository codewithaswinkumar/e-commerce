//package com.jsp.ecommerce;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.data.redis.connection.RedisConnectionFactory;
//import org.springframework.data.redis.connection.lettuce.LettuceConnectionFactory;
//import org.springframework.data.redis.core.RedisTemplate;
//import org.springframework.data.redis.serializer.StringRedisSerializer;
//
//@Configuration
//public class RedisConfig {
//
//	 @Bean
//	    public RedisConnectionFactory redisConnectionFactory() {
//	        // Lettuce is the default Redis client in Spring Boot
//	        return new LettuceConnectionFactory("localhost", 6379);
//	    }
//
//	    @Bean
//	    public RedisTemplate<String, Object> redisTemplate(RedisConnectionFactory factory) {
//	        RedisTemplate<String, Object> template = new RedisTemplate<>();
//	        template.setConnectionFactory(factory);
//	        
//	        // Use String serializer for keys and values
//	        template.setKeySerializer(new StringRedisSerializer());
//	        template.setValueSerializer(new StringRedisSerializer());
//	        template.setHashKeySerializer(new StringRedisSerializer());
//	        template.setHashValueSerializer(new StringRedisSerializer());
//	        
//	        template.afterPropertiesSet();
//	        return template;
//	    }
//}
