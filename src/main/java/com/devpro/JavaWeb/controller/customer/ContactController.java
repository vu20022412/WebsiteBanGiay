package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.ContactUs;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.services.impl.ContactService;

@Controller
public class ContactController extends BaseController{
	
	@Autowired
	private ContactService contactService;

//	@RequestMapping(value = {"/contact-us"} , method = RequestMethod.GET)
//	public String contactUs(final Model model,
//			final HttpServletRequest request,
//			final HttpServletResponse response)
//	throws IOException{
//		return "customer/contact-us";
//	}
//	
//	@RequestMapping(value = {"/contact-us"} , method = RequestMethod.POST)
//	public String contactUsPost(final Model model,
//			final HttpServletRequest request,
//			final HttpServletResponse response)
//	throws IOException{
//		//đọc dữ liệu thông wa một html form
//		String ten = request.getParameter("name");
//		System.out.println(ten);
//		return "customer/contact-us";
//	}
	
	
	@RequestMapping(value = {"/contact-us-spring-form"} , method = RequestMethod.GET)
	public String contactUs(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
	throws IOException{
		
		ContactUs contactUs = new ContactUs();
		model.addAttribute("contactUs", contactUs);
		return "customer/contact-us";
	}
	
	@RequestMapping(value = {"/contact-us-spring-form"} , method = RequestMethod.POST)
	public String contactUsPost(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			final @ModelAttribute ContactUs contactUs)
	throws IOException{
		//đọc dữ liệu thông wa một html form
		System.out.println(contactUs.getName());
//		System.out.println(contactUsFile.getOriginalFilename());
//		model.addAttribute("contactUs", new ContactUs());
		Contact contact = new Contact();
		contact.setName(contactUs.getName());
		contact.setEmail(contactUs.getEmail());
		contact.setMessage(contactUs.getContent());
		contactService.saveOrUpdate(contact);
		
		//reset lai form	
		model.addAttribute("contactUs", new ContactUs());
		return "customer/contact-us";
	}
	
	
	//ajax
//	@RequestMapping(value = {"/contact-us-ajax"} , method = RequestMethod.GET)
//	public String contactUs(final Model model,
//			final HttpServletRequest request,
//			final HttpServletResponse response)
//	throws IOException{
//		return "customer/contact-us";
//	}
	
	
//	@RequestMapping(value = {"/ajax/contact-us-ajax"} , method = RequestMethod.POST)
//	public ResponseEntity<Map<String, Object>> ajax_contact(final Model model,
//			final HttpServletRequest request,
//			final HttpServletResponse response,
//			final @RequestBody ContactUs contactUs)
//	throws IOException{
//		System.out.println(contactUs.getName());
//		System.out.println(contactUs.getEmail());
//		System.out.println(contactUs.getContent());
		
//		Map<String,Object> jsonResult = new HashMap<String, Object>();
//		jsonResult.put("statusName", "Xuan Vu");
//		jsonResult.put("statusEmail", "vuajjd@114010.com");
//		jsonResult.put("statusContent", 123);
		
//		System.out.println(jsonResult.statusName);
		
		
//		return ResponseEntity.ok(jsonResult);
//	}
	
}
