package com.jsp.App.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jsp.App.Repository.CartRepository;
import com.jsp.App.Repository.ProductRepository;
import com.jsp.App.entity.Cart;
import com.jsp.App.entity.Product;

@Controller
public class AppController 
{
	
	@Autowired
	private ProductRepository repo;
	@Autowired
	private CartRepository cartrepo;
	
	@RequestMapping("/")
    public String displayHome(Model model)
    {
		List<Product> li =repo.findAll();
		model.addAttribute("products", li);
    	return "Home";
    }
	
	List<Cart> l;
	@RequestMapping("/add")
	public String addCart(Integer id , Model model)
	{
		
		try 
		{
		
		Product p = repo.findById(id).get();
		Cart c = new Cart();
		c.setId(p.getPId());
		c.setCompanyName(p.getP_Brand());
		c.setFilePath(p.getPPath());
		c.setPrice(p.getP_Cost());
		c.setTypeOfCloth(p.getP_Type());
		
		cartrepo.save(c);
		
		 List<Cart> l = cartrepo.findAll();
		model.addAttribute("carts", l);
		return "Cart";
		} 
		catch (Exception e)
		{
			l=cartrepo.findAll();
			model.addAttribute("carts", l);
			return "Cart";
		}
	}
	
	@RequestMapping("/m")
	 public String displayAppHome()
	    {
	    	return "AppHome";
	    }

	
}
