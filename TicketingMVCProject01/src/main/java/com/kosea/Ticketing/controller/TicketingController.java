package com.kosea.Ticketing.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TicketingController {

	@RequestMapping(value = "openProduct.do", method = RequestMethod.POST)
	public ModelAndView openProduct(@RequestParam Map<String, Object> paramMap) throws Exception {
		System.out.println("ModelAndView()");
		ModelAndView mv = new ModelAndView("Product");

		return mv;
	}

}
