package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.services.impl.ContactService;

@Controller
public class ContactManagement extends BaseController{
	
	@Autowired
	private ContactService contactService;
	
	
	@RequestMapping(value = {"/admin/contact"} , method = RequestMethod.GET)
	public String contact(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response	
			)
	throws IOException{
		List<Contact> contacts1 = contactService.findAll();
		model.addAttribute("contact", contacts1);
		
		//trả về đường dẫn của shop
		return "administrator/ContactManagement";
	}
	
	@RequestMapping(value = {"/admin/contact/delete/{contactId}"} , method = RequestMethod.GET)
	public String deleteContact(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("contactId") int contactId)
	throws IOException{
		contactService.deleteContact(contactId);
		
		//trả về đường dẫn của shop
		return "redirect:/admin/contact";
	}
}	
