package com.jsp.ecommerce.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class WishListOwn
{
	@Id
	@GeneratedValue
   private Integer wId;
	private String filePath;
	private  String type;
	private String cost;
	 @ManyToOne
	   @JoinColumn(name = "UserOwn_Mobile")
	   private UserOwn userOwn;
}
