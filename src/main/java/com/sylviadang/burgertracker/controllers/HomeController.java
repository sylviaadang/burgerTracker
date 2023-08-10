package com.sylviadang.burgertracker.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sylviadang.burgertracker.models.Burger;
import com.sylviadang.burgertracker.services.BurgerService;

import jakarta.validation.Valid;

@Controller
public class HomeController {
	@Autowired
	BurgerService burgerService;
	
//	private final BurgerService burgerServ;
//	public HomeController(BurgerService burgerServ) {
//		this.burgerServ = burgerServ;
//	}
	
	@GetMapping("/")
	public String dashboard(@ModelAttribute("burger") Burger burger, Model model) {
		List<Burger> burgers = burgerService.allBurgers();
		model.addAttribute("burgers", burgers);
		return "index.jsp";
	}
	
	@PostMapping("/addBurger")
	public String home(@Valid @ModelAttribute("burger") Burger burger, BindingResult result, Model model) {
		if(result.hasErrors()) {
			System.out.println(result.getFieldErrors());
			List<Burger> burgers = burgerService.allBurgers();
			model.addAttribute("burgers", burgers);
			return "index.jsp";
		}
		burgerService.addBurger(burger);
		return "redirect:/";
	}
}
