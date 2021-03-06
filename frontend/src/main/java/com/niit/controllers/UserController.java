package com.niit.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.ProductDAO;
import com.niit.dao.UserDetailDAO;
import com.niit.model.UserDetail;

@Controller
public class UserController {

	@Autowired
	ProductDAO productDAO;
	@Autowired
	UserDetailDAO userDetailDAO;
	
	@RequestMapping(value="/Register",method=RequestMethod.POST)
	public String saveuser(@ModelAttribute("userDetail")UserDetail userDetail, Model m ){
		userDetail.setEnabled("True");
		userDetail.setRole("User");
		userDetailDAO.registerUser(userDetail);
		
		/*UserDetail userDetail1=new UserDetail();
		m.addAttribute(userDetail1);*/
		return "Login1";
	}
	@RequestMapping(value="/perform_login")
	public String loginSuccess(Model m,HttpSession session,@RequestParam("username")String username)
	{
		
		
		
	
		return "redirect:login";
	}
	

	}

