
package com.jsp.ecommerce;


import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.ui.Model;

import com.jsp.ecommerce.Repository.MenCategoryRepository;
import com.jsp.ecommerce.controller.EcommerceController;
import com.jsp.ecommerce.entity.MenCategory;

//@WebMvcTest(EcommerceController.class) // Load only web layer
@ExtendWith(MockitoExtension.class)   // Enable Mockito in JUnit 5
public class EcommerceApplicationTestJMockito 
{

	 @InjectMocks
	    private EcommerceController ecommerceController; // Controller instance
	 
	 @Mock
	 private MenCategoryRepository mencat;

	    @Mock
	    private HttpServletRequest request; // Mocked HttpServletRequest

	    @Mock
	    private HttpSession session; // Mocked HttpSession
	    
	    @Mock
	    private Model model;
	
	  @BeforeAll 
	    public static void setUpBeforeClass() throws Exception {  
	        System.out.println("before class");  
	    }  
	    @BeforeEach  
	    public void setUp() throws Exception {  
	        System.out.println("before");  
	        MockitoAnnotations.openMocks(this);
	    }  
	  
	    @Test  
	    public void testPrint(){  
	        System.out.println("Home page...!!!");  
	       
	        when(request.getSession()).thenReturn(session);
	        when(session.getAttribute("login")).thenReturn("user123");
	        assertEquals("Home", ecommerceController.print(request));
	    }  
	    @Test  
	    public void testMenCategoryPage()
	    {  
	        System.out.println("Men page loading...!!!"); 
	        List<MenCategory> mencategory = new ArrayList<MenCategory>();
	        mencategory.add(new MenCategory(1,"shirts","cotton","file path","controller class"));
	        mencategory.add(new MenCategory(2,"pants","cotton","file path","controller class"));
	        
	        when(mencat.findAll()).thenReturn(mencategory);
	        
	        String viewname = ecommerceController.menCategoryPage(model);
	        assertEquals("Mens",viewname);
	        verify(mencat ,times(1)).findAll();
	        verify(model , times(1)).addAttribute("menCategories", mencategory);
	    }  
	    @Test  
	    public void testReverseWord(){  
	        System.out.println("test case reverse word");  
	        assertEquals("ym eman si nahk",Calculation.reverseWord("my name is khan").trim());  
	    }  
	    
	    @AfterEach 
	    public void tearDown() throws Exception 
	    {  
	        System.out.println("after");  
	    }  
	  
	    @AfterAll
	    public static void tearDownAfterClass() throws Exception {  
	        System.out.println("after class");  
	    }  
}
