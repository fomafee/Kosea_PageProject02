package com.kosea.Ticketing.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TicketingController {
	Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value="/Ticketing/openProduct.do")
    public ModelAndView openProduct(@RequestParam Map<String, Object> paramMap) throws Exception{
		ModelAndView mv = new ModelAndView("/product/Product");
         
        return mv;
    }

}
