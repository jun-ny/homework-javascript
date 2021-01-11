package com.javascript.example;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping(value = "/0104", method = RequestMethod.GET)
	public String one() {
		
		return "/0104";
	}
	
	@RequestMapping(value = "/0105", method = RequestMethod.GET)
	public String two() {
		
		return "/0105";
	}
	
	@RequestMapping(value = "/0106", method = RequestMethod.GET)
	public String three() {
		
		return "/0106";
	}
	
	@RequestMapping(value = "/0107", method = RequestMethod.GET)
	public String four() {
		
		return "/0107";
	}
	
	@RequestMapping(value = "/0109", method = RequestMethod.GET)
	public String five() {
		
		return "/0109";
	}
	
	@RequestMapping(value = "/0111", method = RequestMethod.GET)
	public String six() {
		
		return "/0111";
	}
	
	
}
