package com.jsp.App.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;
import lombok.ToString;
@Data
@ToString
@Entity
public class Cart 
{
	@Id
  private Integer id;
	
  private String filePath;
  private String CompanyName;
  private String price;
  private String typeOfCloth;
  
}
