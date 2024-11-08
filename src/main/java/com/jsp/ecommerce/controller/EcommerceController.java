package com.jsp.ecommerce.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.weaver.ast.HasAnnotation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.ecommerce.Repository.CartOwnRepository;
import com.jsp.ecommerce.Repository.MenCategoryRepository;
import com.jsp.ecommerce.Repository.MenProductsOwnRepository;
import com.jsp.ecommerce.Repository.UserOwnRepository;
import com.jsp.ecommerce.Repository.WishListOwnRepository;
import com.jsp.ecommerce.Repository.WomenDressRepository;
import com.jsp.ecommerce.Repository.WomenPageRepository;
import com.jsp.ecommerce.entity.CartOwn;
import com.jsp.ecommerce.entity.MenCategory;
import com.jsp.ecommerce.entity.MenProductsOwn;
import com.jsp.ecommerce.entity.UserOwn;
import com.jsp.ecommerce.entity.WishListOwn;
import com.jsp.ecommerce.entity.WomenDress;
import com.jsp.ecommerce.entity.WomenPage;
@Controller
public class EcommerceController 
{
	@Autowired
	private WomenPageRepository wrepo;

	@Autowired
	private UserOwnRepository uorepo;
	
	@Autowired
	private CartOwnRepository corepo;
	
	@Autowired
    private MenCategoryRepository mencate;
	
	@Autowired
    private MenProductsOwnRepository menOwnRepo;

	@Autowired
	private WishListOwnRepository wishRepo;
   
	
	@RequestMapping("/")
	 public String print(HttpServletRequest req)
	    {
		  HttpSession s3 = req.getSession();
			String data = (String) s3.getAttribute("login");
			System.out.println(data);
	    	return "Home";
	    }
	
	//<<<<MEN PAGE CONTROLLER>>>>//
	
	 @RequestMapping("/MensPageLoad")
	 @PreAuthorize("hasAuthority('ROLE_ADMIN')")
	    public String menCategoryPage(Model model) {
	       
	        List<MenCategory> list = mencate.findAll();
	      
	        // Add the men's category data to the model
	        model.addAttribute("menCategories", list);

	        // Return the name of the view associated with the men's category page
	        return "Mens"; // Assuming "men_category.html" is the view template
	    }
	 
	 @RequestMapping("/loadShirtsPage")
	 public String menItemsLoad(int catId,Model model)
	 {
		 
		List<MenProductsOwn> list = menOwnRepo.findByCategoryId(catId);
		 
		 model.addAttribute("menShirts", list);
		 
		 return "MenShirts";
		 
	 }

		List<CartOwn> h;
		@RequestMapping("/addcM")
		public String addCartMen(Integer cid , Model model,HttpServletRequest req)
		
		{
			HttpSession s2 = req.getSession();
			String data = (String) s2.getAttribute("login");
			if(data!=null)
			{
			   boolean sData = Boolean.parseBoolean(data);
			   if(sData)
			   {
			try 
			{
			
			MenProductsOwn mpo = menOwnRepo.findById(cid).get();
			CartOwn co = new CartOwn();
			//co.setPid(wp.getWdId());
			co.setDiscountCost(mpo.getDiscountCost());
			co.setDressType(mpo.getShirtType());
			co.setFilePath(mpo.getFilePath());
			co.setOriginalCost(mpo.getOriginalCost());
			co.setUserOwn ((UserOwn) s2.getAttribute("userOwn"));
			
			corepo.save(co);
			
//			 List<CartOwn> l = corepo.findAll();
//			model.addAttribute("cartso", l);
			return "redirect:/womenDresses";
			}          
			catch (Exception e)
			{
//				l=corepo.findAll();
//				model.addAttribute("cartso", l);
//				return "cart";
			}
			   }
			}
			   return "Login";
		}
			
		
		@PostMapping("/addWishM")
		public String addWishList(Integer cid , Model model,HttpServletRequest req)
		{
			HttpSession s2 = req.getSession();
			String data = (String) s2.getAttribute("login");
			if(data!=null)
			{
			   boolean sData = Boolean.parseBoolean(data);
			   if(sData)
			   {
			try 
			{
			
			MenProductsOwn mpo = menOwnRepo.findById(cid).get();
			WishListOwn wish = new WishListOwn();
			
			wish.setFilePath(mpo.getFilePath());
			wish.setType(mpo.getShirtType());
			wish.setCost(mpo.getDiscountCost());
			wish.setUserOwn ((UserOwn) s2.getAttribute("userOwn"));
			wishRepo.save(wish);
			
//			 List<CartOwn> l = corepo.findAll();
//			model.addAttribute("cartso", l);
			return "redirect:/MenShirts";
			}          
			catch (Exception e)
			{
//				l=corepo.findAll();
//				model.addAttribute("cartso", l);
//				return "cart";
			}
			   }
			}
			   return "Login";
		}
	 
		
		
		
		
		
	 
	 
	 
	@RequestMapping("/womenPageLoad")
	public String womenPageLoad(Model model)
	{
		List<WomenPage> list = wrepo.findAll();
		model.addAttribute("womenPage", list);
		return "Women";
	}
	
	
	@Autowired
	private WomenDressRepository wdrepo;
	
	@RequestMapping("/womenDresses")
	public String womenDressLoad(Model model)
	{
		List<WomenDress> list = wdrepo.findAll();
		model.addAttribute("womenPage", list);
		return "WomenDresses";
	}
	
	
	
	List<CartOwn> l;
	@RequestMapping("/addc")
	public String addCart(Integer cid , Model model,HttpServletRequest req)
	
	{
		HttpSession s2 = req.getSession();
		String data = (String) s2.getAttribute("login");
		if(data!=null)
		{
		   boolean sData = Boolean.parseBoolean(data);
		   if(sData)
		   {
		try 
		{
		
		WomenDress wp = wdrepo.findById(cid).get();
		CartOwn co = new CartOwn();
		//co.setPid(wp.getWdId());
		co.setDiscountCost(wp.getDiscountCost());
		co.setDressType(wp.getDressType());
		co.setFilePath(wp.getFilePath());
		co.setOriginalCost(wp.getOriginalCost());
		co.setUserOwn ((UserOwn) s2.getAttribute("userOwn"));
		
		corepo.save(co);
		
//		 List<CartOwn> l = corepo.findAll();
//		model.addAttribute("cartso", l);
		return "redirect:/womenDresses";
		}          
		catch (Exception e)
		{
//			l=corepo.findAll();
//			model.addAttribute("cartso", l);
//			return "cart";
		}
		   }
		}
		   return "Login";
	}
	
	
	
		
	
	@RequestMapping("/usercheck")
	public ModelAndView userCheck(String userMobile , String userPassword,HttpServletRequest req)
	{
		
		
		ModelAndView mv = new ModelAndView("Login");
		try 
		{
		    UserOwn u = uorepo.findById(userMobile).get();
		    if(u.getUserOwnMobile().equals(userMobile))
		    {
		    	HttpSession s3 = req.getSession();
		    	s3.setAttribute("userOwn", u);
		    	mv.addObject("status", "true");
			}
			else
			{
				
				mv.addObject("status", "false");
			}
			return mv;
		} 
		catch (Exception e)
		{
			mv.addObject("status", "false");
			return mv;
		}
	}
	
	
	
	
	@RequestMapping("/loginPage")
	public ModelAndView goToLoginPage(HttpServletRequest req)
	{
		ModelAndView mv = new ModelAndView();
		HttpSession s3 = req.getSession();
		String s = (String) s3.getAttribute("login");
	      System.out.println(s);
			boolean b = Boolean.parseBoolean(s);
			System.err.println(b);
			if(b)
			{
				mv.setViewName("Admin");
				return mv;
			}
			else
			{
				mv.setViewName("Login");
				return mv;
			}
	}
	

	
	@GetMapping("/displayCarts")
	public String displayCart(HttpServletRequest req , Model model)
	{
		HttpSession s3 = req.getSession();
		String data = (String) s3.getAttribute("login");
		if(data!=null)
		{
		   boolean sData = Boolean.parseBoolean(data);
		   if(sData)
		   {
			   UserOwn u = (UserOwn) s3.getAttribute("userOwn");
			   List<CartOwn> list = corepo.findByUserOwn(u);
			   model.addAttribute("carts", list);
			   return "cart";
		   }
		   else
		   {
			   return  "Login";
		   }
	}
		else
		{
			return "Login";
		}
	
	}
	
	@RequestMapping("/deleteCart")
	public String deleteItem(Integer id , HttpServletRequest req)
	{
		HttpSession s4 = req.getSession();
		UserOwn u =(UserOwn)s4.getAttribute("userOwn");
		corepo.deleteByIdAndUserOwn(id, u);
		return "redirect:/displayCarts";
	}
	
	
	@RequestMapping("/logout")
	public String userLogout(HttpServletRequest req)
	{
		HttpSession s5 = req.getSession();
		s5.setAttribute("login", "false");
		return "redirect:/";
		
	}
	
}
