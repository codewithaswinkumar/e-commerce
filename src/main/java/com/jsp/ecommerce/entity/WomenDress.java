package com.jsp.ecommerce.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class WomenDress 
{
	@Id
	private Integer wdId;
   private String filePath;
   private String dressType;
   private String discountCost;
   private String originalCost;
}
