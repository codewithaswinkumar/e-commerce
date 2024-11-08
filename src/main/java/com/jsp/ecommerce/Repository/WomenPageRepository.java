package com.jsp.ecommerce.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.ecommerce.entity.WomenPage;
@Repository
public interface WomenPageRepository extends JpaRepository<WomenPage, String>
{

}
