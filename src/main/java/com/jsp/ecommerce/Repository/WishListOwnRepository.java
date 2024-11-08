package com.jsp.ecommerce.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.ecommerce.entity.WishListOwn;
@Repository
public interface WishListOwnRepository extends JpaRepository<WishListOwn, Integer> {

}
