package com.nextsaa.gstspiraea.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nextsaa.gstspiraea.dto.LoginForm;
import com.nextsaa.gstspiraea.dto.UserDetailsDTO;
import com.nextsaa.gstspiraea.service.UserService;

@Controller
public class LoginController {
	@Autowired
	UserService userService;	
	
	@RequestMapping("/login")
	public String welcome(Map<String, Object> model) {
			return "login";
	}
	
	@RequestMapping(value = "/registration")
	public String registration(Map<String, Object> model) {
		model.put("userDetails", new UserDetailsDTO());
		return "registration";
	}
	
	@RequestMapping(value = "/createRegistration")
	public String createRegistration(@ModelAttribute("userDetails") UserDetailsDTO user,Map<String, Object> model) {
		//Set default fields for customer registration
		user.setCreatedBy("REGISTRATION");
		user.setRole("CUSTOMER");
		user.setIsActive(1);
		user.setIsEmailVerified(0);
		user.setIsMobileVerified(0);
		userService.createUser(user);
		return "registration";
	}
	
	@RequestMapping(value = "/loginReq")
	public String checkLogin(@ModelAttribute("loginForm") LoginForm loginDetails) {
		Boolean logincheck=userService.checkLoginDetails(loginDetails.getLoginUserName(), loginDetails.getLoginPassword(),loginDetails.getRole());
		if(logincheck && loginDetails.getRole().equalsIgnoreCase("CUSTOMER"))
			return "custDashboard";
		else if(logincheck && loginDetails.getRole().equalsIgnoreCase("ADMIN"))
			return "adminDashboard";
		else
			return "login";
	}
	
}
