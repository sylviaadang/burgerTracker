package com.sylviadang.burgertracker.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sylviadang.burgertracker.models.Burger;
import com.sylviadang.burgertracker.repositories.BurgerRepository;

@Service
public class BurgerService {
	private final BurgerRepository burgerRepository;
	
	public BurgerService(BurgerRepository burgerRepository) {
		this.burgerRepository = burgerRepository;
	}
	
	//returns all the burgers
	public List<Burger> allBurgers() {
		return burgerRepository.findAll();
	}
	
	//create a burger
	public Burger addBurger(Burger burger) {
		return burgerRepository.save(burger);
	}
	
}
