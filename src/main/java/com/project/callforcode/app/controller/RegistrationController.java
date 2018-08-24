package com.project.callforcode.app.controller;

import java.util.Date;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.project.callforcode.app.persistence.models.GovernmentRegistration;
import com.project.callforcode.app.persistence.models.Registration;
import com.project.callforcode.app.service.GovtRegistrationService;
import com.project.callforcode.app.service.RegistrationService;

@Controller
public class RegistrationController {

	@Autowired
	private RegistrationService registrationService;
	private GovtRegistrationService govtRegistrationService;

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String loadRegistrationPage(@ModelAttribute("registration") Registration registration, Model model) {

		return "registration";

	}

	// added for Government Registration

	@RequestMapping(value = "/governmentRegistration", method = RequestMethod.GET)
	public String loadGovtRegistrationPage(
			@ModelAttribute("GovernmentRegistration") GovernmentRegistration govRegistration, Model model) {
		return "governmentRegistration";

	}

	@RequestMapping(value = "/saveNGO", method = RequestMethod.POST)
	public String saveTheNGOForm(@Valid @ModelAttribute("registration") Registration registration, BindingResult result,
			Model model) {

		if (result.hasErrors()) {
			model.addAttribute("failMessage", "Form data validation fail...");
			System.out.println(result.getErrorCount());
		} else {
			//boolean saveNGO = registrationService.saveNGO(registration);
			int saveNGO = registrationService.newSaveNGO(registration);

			if (saveNGO > 0) {
				model.addAttribute("successMessage", "The User " + registration.getNGOName()
						+ " saved successfully on this time " + new Date().toString());
			}
		}
		return "registration";
	}

	// for Govt
	@RequestMapping(value = "/saveGovt", method = RequestMethod.POST)
	public String saveGovtForm(@Valid @ModelAttribute("GovernmentRegistration") GovernmentRegistration govtRegistration,
			BindingResult result, Model model) {

		if (result.hasErrors()) {
			model.addAttribute("failMessage", "Form data validation fail...");
			System.out.println(result.getErrorCount());
		} else {
			//boolean saveGovt = registrationService.saveGovt(govtRegistration);
			int saveGovt = registrationService.newsaveGovt(govtRegistration);
			if (saveGovt > 0) {
				model.addAttribute("successMessage", "The User " + govtRegistration.getGovernmentStateName()
						+ " saved successfully on this time " + new Date().toString());
			}
		}
		return "governmentRegistration";
	}
}
