package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.Employee;

@Controller
public class HomeController extends BaseController {
	@RequestMapping(value = {"/home/{tenlop}/{namhoc}"} , method = RequestMethod.GET)
	public String test(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable ("tenlop") String tenlop,
			@PathVariable ("namhoc") String namhoc
			)
	throws IOException{
		
		//request -> dùng để đọc dữ liệu  trong request đẩy lên
		
		
		//cách 1: đẩy dữ liệu lên Controller thông wa request-param 
		//ví dụ : http://localhost:8080/home?tenlop=12a1&namhoc=2019
		//String tenlop = request.getParameter("tenlop");
		//String namhoc = request.getParameter("namhoc");
		
		
		//cách 2: đẩy dữ liệu lên Controller thông wa request-param
		//ví dụ : http://localhost:8080/home?tenlop=12a1&namhoc=2019
		
		//gửi dữ liệu từ COntroller -> view -> sử dụng model
		model.addAttribute("tenlop", tenlop);
		model.addAttribute("namhoc", namhoc);
		
		List<Employee> employees =new ArrayList<Employee>();
		employees.add(new Employee("Do xuan vu", 21));
		employees.add(new Employee("Do xuan chinh", 24));
		model.addAttribute("employees", employees);
		
		//trả về đường dẫn của view
		return "customer/home";
	}
	
	@RequestMapping(value = {"/home"} , method = RequestMethod.GET)
	public String test(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response	
			)
	throws IOException{
		
		//request -> dùng để đọc dữ liệu  trong request đẩy lên
		
		
		//cách 1: đẩy dữ liệu lên Controller thông wa request-param
		//ví dụ : http://localhost:8080/home?tenlop=12a1&namhoc=2019
		//String tenlop = request.getParameter("tenlop");
		//String namhoc = request.getParameter("namhoc");
		
		
		//cách 2: đẩy dữ liệu lên Controller thông wa request-param
		//ví dụ : http://localhost:8080/home?tenlop=12a1&namhoc=2019
		
		//gửi dữ liệu từ COntroller -> view -> sử dụng model
		model.addAttribute("tenlop", "javaweb");
		model.addAttribute("namhoc", 2023);
		
		List<Employee> employees =new ArrayList<Employee>();
		employees.add(new Employee("Do xuan vu", 21));
		employees.add(new Employee("Do xuan chinh", 24));
		model.addAttribute("employees", employees);
		
		//trả về đường dẫn của view
		return "customer/home";
	}
	

}
