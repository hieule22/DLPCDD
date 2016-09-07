package com.fis.cdd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fis.cdd.model.RegularExpression;
import com.fis.cdd.model.RegularExpressionForm;
import com.fis.cdd.service.RegexService;
import com.fis.cdd.util.Constants;

@Controller
public class RegexController implements BaseController, Constants {

	@Autowired
	private RegexService regexService;

	private List<RegularExpression> regularExpressions;

	private RegularExpressionForm regexForm;

	@Override
	@RequestMapping(value = "/regex", method = RequestMethod.GET)
	public String display(ModelMap model) {
		populateRegexFormModel();
		model.addAttribute("regexForm", regexForm);
		return VIEW_REGEX;
	}

	@RequestMapping(value = "/regex/{id}/update", method = RequestMethod.GET)
	public String showUpdateRegExForm(@PathVariable("id") Long id, Model model) {

		RegularExpression regex = regexService.findById(id);
		model.addAttribute("regexForm", regex);

		return VIEW_EDIT_REGEX;
	}

	@RequestMapping(value = "/regex/{id}/delete", method = RequestMethod.GET)
	public String deleteRegex(@PathVariable("id") Long id, Model model) {

		try {
			regexService.delete(id);
		} catch (Exception e) {
			model.addAttribute("error", e.getMessage());
		}
		model.addAttribute("success", MSG_REGEX_DELETE_SUCCESS);
		populateRegexFormModel();
		model.addAttribute("regexForm", regexForm);
		return VIEW_REGEX;
	}

	@RequestMapping(value = "/regex/add", method = RequestMethod.GET)
	public String showAddRegExForm(Model model) {
		model.addAttribute("regexForm", new RegularExpression());
		return VIEW_EDIT_REGEX;
	}

	@RequestMapping(value = "/addregex", method = RequestMethod.POST)
	public String saveOrUpdate(@ModelAttribute("regexForm") RegularExpression regex, Model model) {
		try {
			regexService.saveOrUpdate(regex);
		} catch (Exception e) {
			model.addAttribute("error", e.getMessage());
			model.addAttribute("regexForm", regex);
			return VIEW_EDIT_REGEX;
		}
		if (regex.getId() == null)
			model.addAttribute("success", MSG_REGEX_CREATE_SUCCESS);
		else
			model.addAttribute("success", MSG_REGEX_UPDATE_SUCCESS);

		populateRegexFormModel();
		model.addAttribute("regexForm", regexForm);
		return VIEW_REGEX;
	}

	private void populateRegexFormModel() {
		regularExpressions = regexService.findAll();
		regexForm = new RegularExpressionForm();
		regexForm.setRegularExpressions(regularExpressions);
	}
}
