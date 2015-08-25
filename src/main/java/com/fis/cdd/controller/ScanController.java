/**
 * 
 */
package com.fis.cdd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fis.cdd.profile.profiles.ResultLog;
import com.fis.cdd.model.Scan;
import com.fis.cdd.service.ScanService;
import com.fis.cdd.util.Constants;

/**
 * @author HaiNT
 *
 */

@Controller
@SessionAttributes
public class ScanController implements BaseController, Constants {

	private ResultLog resultLog;

	@Autowired
	private ScanService scanService;

	@Override
	@RequestMapping(value = "/scan", method = RequestMethod.GET)
	public String display(ModelMap model) {
		model.addAttribute("scanForm", new Scan());
		return VIEW_SCAN;
	}
	
	@RequestMapping(value = "/newScan", method = RequestMethod.GET)
	public String showNewScanForm(ModelMap model) {
		model.addAttribute("scanForm", new Scan());
		return VIEW_NEW_SCAN;
	}

	@RequestMapping(value = "startScan", method = RequestMethod.POST)
	public String scanFiles(@ModelAttribute("scan") Scan scan, Model model) {
		try {
			resultLog = scanService.startScan(scan);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("resultLog", resultLog);
		return VIEW_RESULT;

	}

}
