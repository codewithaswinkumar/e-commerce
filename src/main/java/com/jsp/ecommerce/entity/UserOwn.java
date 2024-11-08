package com.jsp.ecommerce.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
public class UserOwn
{
   private String userOwnEmail;
   @Id
   private String userOwnMobile;
   private String userOwnName;
   private String userOwnPassword;
}