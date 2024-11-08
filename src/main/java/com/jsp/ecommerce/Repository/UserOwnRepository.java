package com.jsp.ecommerce.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.ecommerce.entity.UserOwn;
@Repository
public interface UserOwnRepository extends JpaRepository<UserOwn, String> 
{
  
}
