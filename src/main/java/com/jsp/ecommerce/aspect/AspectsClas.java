package com.jsp.ecommerce.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class AspectsClas 
{
	
	// THIS METHOD EXECUTE BEFORE EXECUTION OF ALL METHODS IN CONTROLLER CLASS

//	  @Before("execution(* com.jsp.ecommerce.controller.*.*(..))")  
//	    public void afterAdvice(JoinPoint joinPoint)\
//	    {  
//	        System.out.println("After method execution: " + joinPoint.getSignature().getName());  
//	    }
	  
	  //THIS METHOD EXECUTE BEFORE SPECIFIC METHOD EXECUTION
//    @Before("execution(* com.jsp.ecommerce.controller.EcommerceController.menCategoryPage(..))")
//    public void beforeMenCategoryPage(JoinPoint joinPoint) {  
//        System.out.println("Before executing: " + joinPoint.getSignature().getName());  
//    }
//    @After("execution(* com.jsp.ecommerce.controller.EcommerceController.menCategoryPage(..))")
//    public void afterMenCategoryPage(JoinPoint joinPoint)
//    {
//    	System.out.println("After executing :"+joinPoint.getKind()+" : "+joinPoint.getArgs()+" : "+joinPoint.getSignature());
//    }
//    
//    //THIS METHOD EXECUTE BEFOER AND AFTER SPECIFIC METHOD EXECUTION
//    @Around("execution(* com.jsp.ecommerce.controller.EcommerceController.menItemsLoad(..))")
//    public Object aroundMenShirtsPage(ProceedingJoinPoint joinPoint) throws Throwable
//    {
//    	System.out.println("Before : "+joinPoint.getSignature());
//    	Object obj = joinPoint.proceed();
//    	System.out.println("aswinkumar :"+obj.toString());
//    	System.out.println("After : "+joinPoint.getSignature());
//    	return obj;
//    }
//    
//    //THIS METHOD EXECUTE AFTER SPECIFIC METHOD THROW EXCEPTION OTHERWISE NOT EXECUTE
//    @AfterThrowing(pointcut =  "execution (* com.jsp.ecommerce.controller.EcommerceController.womenDressLoad(..))",throwing = "ex")
//    public void afterThrowing(JoinPoint joinPoint , Exception ex)
//    {
//    	System.out.println("after throwing...!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11");
//    	 System.out.println("Exception thrown in method: " + joinPoint.getSignature().getName());
//         System.out.println("Exception details: " + ex.getMessage());
//    }
//    
//    //THIS METHOD EXECUTE AFTER SPECIFIC METHOD RETURNING RESULT
//    
//    @AfterReturning(pointcut = "execution(* com.jsp.ecommerce.controller.EcommerceController.womenDressLoad(..))", returning = "result")
//    public void afterReturning(JoinPoint joinPoint, Object result) {
//        System.out.println("after returning...!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11");
//        System.out.println("Method executed successfully: " + joinPoint.getSignature().getName());
//        System.out.println("Returned value: " + result);
//    }
	
	
	
	// Define a Pointcut for all methods in the EcommerceController class
    //POINTCUT WE DEFINE SINGLE METHOD MULTIPLE METHODS //ALL METHOS WE ADD * IN PLACE OF womenDressLoad
    @Pointcut("execution(* com.jsp.ecommerce.controller.EcommerceController.womenDressLoad(..)) || "
    +	     "execution(* com.jsp.ecommerce.controller.EcommerceController.womenPageLoad(..))")
    public void controllerMethods() {}

    // Apply @Before advice to the defined Pointcut
    @Before("controllerMethods()")
    public void logBefore(JoinPoint joinPoint) {
        System.err.println("Executing method @pointcuts : " + joinPoint.getSignature().getName());
    }
    // Apply @After advice to the defined Pointcut
    @After("controllerMethods()")
    public void logAfter(JoinPoint joinPoint) {
        System.out.println("Executed method: " + joinPoint.getSignature().getName());
    }
    
    
    
    //contructor joinpoint
//    @Before("execution(public com.jsp.ecommerce.entity.MenProductsOwn.new(..))")
//    public void controllerJoinpoint(JoinPoint joinPoint)
//    {
//    	System.err.println("Constructor joinpoints :  "+joinPoint.getSignature().getName());
//    }
   
    
    
    
}
