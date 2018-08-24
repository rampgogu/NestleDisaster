package com.project.callforcode.app.controller;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.callforcode.app.persistence.models.Registration;
import com.project.callforcode.app.persistence.models.WeatherDetails;
import com.project.callforcode.app.service.RegistrationService;
import com.project.callforcode.app.service.WeatherService;



@Controller
public class MainController {
	
	
	@Autowired
	private RegistrationService registrationService;
	@Autowired
	private WeatherService weatherService;
	
	/*@Autowired
	private GovtRegistrationService govtRegistrationService;*/
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String homePage(@Valid @ModelAttribute("weatherDetails") WeatherDetails weatherDetails, BindingResult result, Model model) {
		List<WeatherDetails> detailsList = weatherService.detailsList();
        model.addAttribute("detailsList", detailsList);
		return "index";
	}
	
	@RequestMapping(value = "/registeredNGOList", method = RequestMethod.GET)
	public String registeredNGOList(@Valid @ModelAttribute("allNGOList") Registration registration, BindingResult result, Model model) {
		List<Registration> registeredNGOList = registrationService.listNGO();
        model.addAttribute("registeredNGOList", registeredNGOList);
		return "registeredNGOList";
	}
	
	@RequestMapping(value = "/contacts", method = RequestMethod.GET)
	public String contactPage() {
		return "contacts";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String aboutUsPage() {
		return "about";
	}
	
//	@RequestMapping(value = "/news", method = RequestMethod.GET)
//	public String newsDetailsPage(@Valid @ModelAttribute("weatherDetails") WeatherDetails weatherDetails, BindingResult result, Model model) {
//		List<WeatherDetails> detailsList = weatherService.detailsList();
//        model.addAttribute("detailsList", detailsList);
//		return "news";
//	}
	
	
	//Anirban
	@RequestMapping(value = "/news/{ID}", method = RequestMethod.GET)
	public String newsDetailsPage(@Valid @ModelAttribute("weatherDetails") WeatherDetails weatherDetails, @ModelAttribute("registration") Registration registration,BindingResult result, Model model,@PathVariable("ID") String ID, HttpServletRequest request) {
		 String path = request.getContextPath();
		 model.addAttribute("path",path);
		WeatherDetails details = weatherService.getDetailsById(Integer.valueOf(ID));
		 System.out.println(details.getKidsMale());
		 System.out.println(details.getKidsFemale());
		 System.out.println(details.getAdultsMale());
		 System.out.println(details.getAdultsFemale());
		 model.addAttribute("details", details);
		 model.addAttribute("registration",registration);
		return "news";
	}
	
	@RequestMapping(value = "/servicerequest", method = RequestMethod.GET)
	public String serviceRequestPage(@Valid @ModelAttribute("registration") Registration registration, BindingResult result, Model model, HttpServletRequest request) {
		String food = request.getParameter("Service2");
		String medicine = request.getParameter("Service1");
		String clothes = request.getParameter("Service3");
		System.out.println("FOOOOOOD ==="+food);
		String path = request.getContextPath();
		if(food != null){
			List<Registration> regs1 = registrationService.listNGOByService2(food.replaceAll(food,"food"));	
			System.out.println("regs1 =="+regs1.size());
			 model.addAttribute("regs1", regs1);
		}else if(medicine != null){
			List<Registration> regs2 = registrationService.listNGOByService1(medicine.replaceAll(medicine,"medicine"));
			System.out.println("regs2 =="+regs2.size());
			 model.addAttribute("regs2", regs2);
		}else if(clothes!= null){
			List<Registration> regs3 = registrationService.listNGOByService3(clothes.replaceAll(clothes,"clothes"));
			System.out.println("regs3 =="+regs3.size());
			 model.addAttribute("regs3", regs3);
		}
		model.addAttribute("path",path);
		return "servicerequest";
	}
	
	@RequestMapping(value = "/getService", method = RequestMethod.POST)
	public String saveGovtForm(@Valid @ModelAttribute("registration") Registration registration,
			BindingResult result, Model model, HttpServletRequest request) {
		
		return "governmentRegistration";
	}
	
	

	

}
