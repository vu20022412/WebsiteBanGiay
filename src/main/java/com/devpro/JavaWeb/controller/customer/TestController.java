package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;


//1.Báo cho Sping-mvc biết đây là 1 controller
//2.SpringMVC sẽ tạo 1 instance  của TestController  và sẽ được quản lý bởi SpringContainer
//  	TestController testController = new TestController();
//  	SpringContainer.Put(testController)
@Controller
public class TestController extends BaseController {
	
	
	@RequestMapping(value = {"/test1"} , method = RequestMethod.GET)
	public void test(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response)
	throws IOException{
		response.getWriter().print("kha trang");
	}
}
