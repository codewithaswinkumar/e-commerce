package com.jsp.ecommerce.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.ecommerce.entity.WomenDress;
@Repository
public interface WomenDressRepository extends JpaRepository<WomenDress, Integer> 
{

}
