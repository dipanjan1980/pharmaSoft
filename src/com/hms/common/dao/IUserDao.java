package com.hms.common.dao;

import com.hms.common.pojo.User;

public interface IUserDao 
{
	public User getUser(String strUserName, String strPassword);
	public User searchUserByEmployeeID(String strEmployee);
	public int createUserForActivation(User objUser, User objLoggedUser);
	public int changeUserPassword(User objUser);
}
