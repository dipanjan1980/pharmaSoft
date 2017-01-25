package com.hms.pharmacy.inventory.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.mvc.AbstractController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.hms.pharmacy.inventory.model.ItemCategory;

@Controller
@RequestMapping(value="/pharma/inventory/itemCategory")
public class ItemCategoryController 
{
	@RequestMapping(value="/loadItemCategory.html", method=RequestMethod.GET)	
	public String doLoadItemCategory(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		System.out.println("doLoadItemCategory");
        return  "pharmacy/inventory/master/itemCategoryList";
	}

	@RequestMapping(value="/loadItemCategoryAdd.html", method=RequestMethod.GET)	
	public String doLoadItemCategoryAdd(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		System.out.println("doLoadItemCategoryAdd");
        return  "pharmacy/inventory/master/addItemCategory";
	}
}
