package com.hms.common.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hms.common.business.UserMenuListBuilder;
import com.hms.common.pojo.Menu;
import com.hms.common.pojo.User;
import com.hms.util.HmsConstants;


@SuppressWarnings("unused")
@Controller
@RequestMapping("/pharma/menu")
public class MenuController 
{
	UserMenuListBuilder menuBuilder;
	public void setMenuBuilder(UserMenuListBuilder menuBuilder){
		this.menuBuilder = menuBuilder;
	}
	
	@RequestMapping(value="/loadMenu.html", method=RequestMethod.GET)
	public ModelAndView doLoadMenu(final HttpServletRequest request, final HttpServletResponse response) throws Exception 
	{

		System.out.println("**** doLoadMenu *******");
		Map<String, List<Menu>> userMenu = null;  
		Map<String, Object> model = new HashMap<String, Object>();
		User objLoggedInUser = (User)request.getSession().getAttribute(HmsConstants.LOGGED_IN_USER);
		
		/*Administration menu list*/
		userMenu =  menuBuilder.createUserMenuList(request, response, objLoggedInUser, HmsConstants.ADMIN_MENU_PARENT_CODE);
		request.getSession().setAttribute(HmsConstants.ADMIN_MENU_PARENT_CODE, userMenu);	

		/*Inventory Menu List*/
		userMenu =  menuBuilder.createUserMenuList(request, response, objLoggedInUser, HmsConstants.INV_MENU_PARENT_CODE);
		request.getSession().setAttribute(HmsConstants.INV_MENU_PARENT_CODE, userMenu);	
		
		
		/*Sales Menu List*/
		userMenu =  menuBuilder.createUserMenuList(request, response, objLoggedInUser, HmsConstants.SAL_MENU_PARENT_CODE);
		request.getSession().setAttribute(HmsConstants.SAL_MENU_PARENT_CODE, userMenu);	

		/*Purchase Menu List*/
		userMenu =  menuBuilder.createUserMenuList(request, response, objLoggedInUser, HmsConstants.PUR_MENU_PARENT_CODE);
		request.getSession().setAttribute(HmsConstants.PUR_MENU_PARENT_CODE, userMenu);	

		/*Utility Menu List*/
		userMenu =  menuBuilder.createUserMenuList(request, response, objLoggedInUser, HmsConstants.UTL_MENU_PARENT_CODE);
		request.getSession().setAttribute(HmsConstants.UTL_MENU_PARENT_CODE, userMenu);	

		model.put(HmsConstants.LOGGED_IN_USER, objLoggedInUser);  
		return new ModelAndView("common/menuHome", model);  	
	}

}
