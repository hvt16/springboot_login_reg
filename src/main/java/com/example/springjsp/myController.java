package com.example.springjsp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class myController {
	
	@Autowired
    private UserRepository userRepo;
	
	@GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null) {
        	System.out.println(error);
            model.addAttribute("error", "Your username or password is invalid.");
        }

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login";
    }
	
	@GetMapping("/register")
	public String registrationPage(Model model) {
		model.addAttribute("user", new User());
		return "register";
	}
	
	@PostMapping("/register")
	public String processRegister(User user) {
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	    String encodedPassword = passwordEncoder.encode(user.getPassword());
	    user.setPassword(encodedPassword);
		userRepo.save(user);
		return "login";
	}
	
	@GetMapping({"/", "/welcome"})
	public String welcome(@AuthenticationPrincipal User user, Model model) {
		
	    return "welcome";
	}
}
