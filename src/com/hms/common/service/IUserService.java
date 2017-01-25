package com.hms.common.service;

import com.hms.common.pojo.User;

public interface IUserService 
{
	public User getUser(String strUserName, String strPassword);
	public User searchUserByEmployeeID(String strEmployee);
	public int createUserForActivation(User objUser, User objLoggedUser);
	public int changeUserPassword(User objUser);

}
