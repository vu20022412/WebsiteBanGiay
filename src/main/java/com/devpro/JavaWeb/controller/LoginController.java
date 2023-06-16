package com.devpro.JavaWeb.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.services.impl.UserService;

@Controller
public class LoginController extends BaseController {

	
	@Autowired
	private UserService userService;
	@RequestMapping(value = { "/login" }, method = RequestMethod.GET)
	public String login(final Model model, 
					   final HttpServletRequest request,
					   final HttpServletResponse response)
			throws IOException {
//		String username = request.getParameter("username");
//		HttpSession session = request.getSession();
//		session.setAttribute("username", userService.findByUsername(username));
		return "login";
	}
	
}
