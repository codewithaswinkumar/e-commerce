package com.jsp.ecommerce.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class CartOwn
{
	@Id
	@GeneratedValue
	private Integer id;
	   private String filePath;
	   private String dressType;
	   private String discountCost;
	   private String originalCost;
	   @ManyToOne
	   @JoinColumn(name = "UserOwn_Mobile")
	   private UserOwn userOwn;
}
