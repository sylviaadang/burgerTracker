package com.sylviadang.burgertracker.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.sylviadang.burgertracker.models.Burger;

public interface BurgerRepository extends CrudRepository<Burger, Long> {
	List<Burger> findAll();
}
