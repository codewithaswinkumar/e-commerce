package com.jsp.App.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.yaml.snakeyaml.events.Event.ID;

import com.jsp.App.entity.Cart;
@Repository
public interface CartRepository extends JpaRepository<Cart, Integer>
{

}
