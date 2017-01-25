package com.hms.common.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hms.common.dao.IUserDao;
import com.hms.common.dao.UserDaoImpl;
import com.hms.common.pojo.User;
import com.hms.common.service.IUserService;
import com.hms.util.HmsConstants;
import com.hms.util.HmsUtil;

@Controller
@RequestMapping("/pharma/user")
public class UserController 
{
	private IUserService userService;

	@Autowired(required=true)
	@Qualifier(value="userService")
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value="/loadCreateUser.html", method=RequestMethod.GET)
	public ModelAndView doLoadCreateUser(final HttpServletRequest request, final HttpServletResponse response) throws Exception 
	{

		HttpSession session = null;
		Map<String, Object> model = null;
		try
		{
			System.out.println("doLoadCreateUser");
			session = request.getSession();
			model = new HashMap<String, Object>();  
			model.put("user",  new User());  
			
		}
		catch(Exception e){
			System.err.println("From doLoadCreateUser of UserController:::" + e.getMessage());
		}

		return new ModelAndView("common/createUser", model);  	
	}
	
	@RequestMapping(value="/loadUserListFinder.html", method=RequestMethod.GET)
	public ModelAndView doLoadUserListFinder(final HttpServletRequest request, final HttpServletResponse response) throws Exception 
	{

		HttpSession session = null;
		Map<String, Object> model = null;
		try
		{
			System.out.println("doLoadUserListFinder");
			session = request.getSession();
			model = new HashMap<String, Object>();  
			model.put("userList",  new User());  
			
		}
		catch(Exception e){
			System.err.println("From doLoadUserListFinder of UserController:::" + e.getMessage());
		}

		return new ModelAndView("common/userListFinder", model);  	
	}

	
	@RequestMapping(value="/searchUserForAtivation.html", method=RequestMethod.POST)
	public ModelAndView doSearchUserForAtivation(@ModelAttribute User user, final HttpServletRequest request, final HttpServletResponse response) throws Exception 
	{
		Map<String, Object> model = new HashMap<String, Object>();
		try
		{
			System.out.println("doSearchUserForAtivation");
			String strEmployeeID = "";//user.getEmployeeID();
			if(strEmployeeID != null && !strEmployeeID.equals("")){
				user = userService.searchUserByEmployeeID(strEmployeeID);  
				if(user != null)
					model.put("user", user);
				else
					model.put("user", new User());
				model.put("roleList",HmsUtil.userRoleList());
				//System.out.println("Search User Name:::" + user.getEmployeeDisplayName());	
			}
		}
		catch(Exception e){
			System.err.println("From doSearchUserForAtivation of UserController:::" + e.getMessage());
		}

		return  new ModelAndView("common/createUser", model);  	
	}
	
	@RequestMapping(value="/createUserForAtivation.html", method=RequestMethod.POST)
	public ModelAndView doCreateUserForAtivation(@ModelAttribute User user, final HttpServletRequest request, final HttpServletResponse response) throws Exception 
	{
		Map<String, Object> model = new HashMap<String, Object>();
		try
		{
			HttpSession session = null;
			User objLoggedUser  = null;
			int intInsert = 0;
			if(user != null)
			{
				session = request.getSession();
				objLoggedUser = (User)session.getAttribute(HmsConstants.LOGGED_IN_USER);
				if(objLoggedUser != null){
					System.out.println("doCreateUserForAtivation");
					//user.setEmployeeAutoID(HmsUtil.generateAutoID());
					//user.setUserName(user.getEmployeeID());
					//user.setPassword(user.getEmployeeID());
					intInsert = userService.createUserForActivation(user, objLoggedUser);
					if(user != null)
						model.put("user", user);
					model.put("roleList",HmsUtil.userRoleList());
					if(intInsert > 0)
						model.put("message", "User is created sucessfully.!!!");
					else
						model.put("message", "Error in data processing.!!!");
				}
			}
		}
		catch(Exception e){
			model.put("message", "Error in data processing.!!!");
			System.err.println("From doCreateUserForAtivation of UserController:::" + e.getMessage());
		}

		return  new ModelAndView("common/createUser", model);  	
	}

	@RequestMapping(value="/loadChangePassword.html", method=RequestMethod.GET)
	public ModelAndView doLoadChangePassword(final HttpServletRequest request, final HttpServletResponse response) throws Exception 
	{

		HttpSession session = null;
		Map<String, Object> model = null;
		
		try
		{
			session = request.getSession();
			User objUser = (User)session.getAttribute(HmsConstants.LOGGED_IN_USER);
			if(objUser  != null){
				model = new HashMap<String, Object>();  
				model.put("user", objUser);  
			}
		}
		catch(Exception e){
			System.err.println("From doLoadChangePassword of UserController:::" + e.getMessage());
		}

		return new ModelAndView("common/changePassword", model);  	
	}

	@RequestMapping(value="/changePassword.html", method=RequestMethod.POST)
	public ModelAndView doChangePassword(@ModelAttribute User user, final HttpServletRequest request, final HttpServletResponse response) throws Exception 
	{

		HttpSession session = null;
		Map<String, Object> model = null;
		int intUpdate  = 0;
		
		try
		{
			session = request.getSession();
			User objLoggedUser = (User)session.getAttribute(HmsConstants.LOGGED_IN_USER);
			if(objLoggedUser  != null)
			{
				if(user != null){
					model = new HashMap<String, Object>();
					System.out.println("New Password:::" + user.getNewPassword());
					objLoggedUser.setNewPassword(user.getNewPassword());
					objLoggedUser.setConfirmPassword(user.getConfirmPassword());
					intUpdate = userService.changeUserPassword(objLoggedUser);
					if(intUpdate > 0){
						model.put("message", "Password has been Changed Successfully. !!!");  
					}
					else{
						model.put("message", "Error in data processing. !!!");  
					}
					
					model.put("user",objLoggedUser);
				}
				
			}
		}
		catch(Exception e){
			System.err.println("From doChangePassword of UserController:::" + e.getMessage());
		}

		return new ModelAndView("common/changePassword", model);  	
	}
}
