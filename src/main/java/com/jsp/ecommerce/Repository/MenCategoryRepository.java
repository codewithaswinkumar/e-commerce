package com.jsp.ecommerce.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.ecommerce.entity.MenCategory;
@Repository
public interface MenCategoryRepository extends JpaRepository<MenCategory, Integer>
{
 
}
