package com.hms.pharmacy.inventory.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hms.common.pojo.Menu;
import com.hms.common.pojo.ReportParams;
import com.hms.common.pojo.User;
import com.hms.util.HmsConstants;

@SuppressWarnings("unused")
@Controller
@RequestMapping("/pharma/inventory/invReport")
public class InventoryReportController 
{
	@RequestMapping(value="/loadMedicineListRptParam.html", method=RequestMethod.GET)
	public String doLoadMedicineListRptParam(final HttpServletRequest request, final HttpServletResponse response, Model model) throws Exception 
	{

		System.out.println("**** doLoadMedicineListRptParam *******");
		User objLoggedInUser = (User)request.getSession().getAttribute(HmsConstants.LOGGED_IN_USER);
		
		model.addAttribute(HmsConstants.LOGGED_IN_USER, objLoggedInUser);
		model.addAttribute("reportParams", new ReportParams());
		return  "pharmacy/inventory/reports/medicineListParams";  	
	}

	@RequestMapping(value="/generateMedicineList.html", method=RequestMethod.GET)
	public ModelAndView doGenerateMedicineList(final HttpServletRequest request, final HttpServletResponse response) throws Exception 
	{

		System.out.println("**** doGenerateMedicineList *******");
		Map<String, Object> model = new HashMap<String, Object>();
		User objLoggedInUser = (User)request.getSession().getAttribute(HmsConstants.LOGGED_IN_USER);

		model.put(HmsConstants.LOGGED_IN_USER, objLoggedInUser);  
		return new ModelAndView("pharmacy/inventory/reports/medicineListReport", model);  	
	}

}
