package com.jsp.ecommerce.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Entity
public class MenProductsOwn 
{
	@Id
  private Integer msid;
  private String filePath;
  private String shirtType;
  private String discountCost;
  private String originalCost;
  @JoinColumn(name = "Category_Id")
  private Integer categoryId;
  
//  public MenProductsOwn()
//  {
//	  System.err.println("######################################################################");
//  }
}
