package com.hms.common.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hms.common.dao.IUserDao;
import com.hms.common.dao.UserDaoImpl;
import com.hms.common.pojo.User;
import com.hms.common.service.IUserService;
import com.hms.util.HmsConstants;

@SuppressWarnings("unused")
@Controller
@RequestMapping("/user")
public class LoginController 
{
	private IUserService userService;

	@Autowired(required=true)
	@Qualifier(value="userService")
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value="/login.html", method=RequestMethod.POST)
	public String doLogin(final HttpServletRequest request, final HttpServletResponse response) throws Exception 
	{

		String strUserName = null;
		String strPassword = null;
		HttpSession session = null;
		
		try
		{
			System.out.println("doLogin");
			session = request.getSession();
			strUserName = request.getParameter("userName");
			strPassword = request.getParameter("password");
			if(strUserName != null && !strUserName.equals("") && strPassword != null && !strPassword.equals(""))
			{
				User objUser = userService.getUser(strUserName.trim(), strPassword.trim());
				if(objUser != null)
				{
					System.out.println("Fetched User:::" + objUser.getUserName());
					session.setAttribute(HmsConstants.LOGGED_IN_USER, objUser);
					//if(objUser.getIsPasswordChanged() != null && objUser.getIsPasswordChanged().equalsIgnoreCase("N")){
						//return "redirect:"+HmsConstants.REDIRECT_CHANGE_PASSWORD;
					//}
				}
				else
				{
					System.out.println("User is null");
					return "redirect:"+HmsConstants.REDIRECT_HOME_URL;
				}
			}
			else{
				System.out.println("UserName is blank");
				return "redirect:"+HmsConstants.REDIRECT_HOME_URL;
			}
			
		}
		catch(Exception e){
			System.err.println("From doLogin() of LoginController:::" + e.getMessage());
			return "redirect:"+HmsConstants.REDIRECT_HOME_URL;
		}

		return "redirect:"+HmsConstants.REDIRECT_PHARMACY_MENU_URL;
	}

}
