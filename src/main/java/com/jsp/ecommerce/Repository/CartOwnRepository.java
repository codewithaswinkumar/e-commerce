package com.jsp.ecommerce.Repository;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.jsp.ecommerce.entity.CartOwn;
import com.jsp.ecommerce.entity.UserOwn;
@Repository
public interface CartOwnRepository extends JpaRepository<CartOwn , Integer> 
{
     List<CartOwn> findByUserOwn(UserOwn u);
     @Transactional
     void deleteByIdAndUserOwn(Integer id , UserOwn u);
}
