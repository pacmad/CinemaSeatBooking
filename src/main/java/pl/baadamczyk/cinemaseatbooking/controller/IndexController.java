package pl.baadamczyk.cinemaseatbooking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	

	@RequestMapping("/")
	public String returnStartingPage() {
		return "index";
	} 	
}
