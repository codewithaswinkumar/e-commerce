package com.jsp.ecommerce.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.ecommerce.entity.MenProductsOwn;

@Repository
public interface MenProductsOwnRepository extends JpaRepository<MenProductsOwn, Integer> {
    List<MenProductsOwn> findByCategoryId(Integer CategoryId);
}

