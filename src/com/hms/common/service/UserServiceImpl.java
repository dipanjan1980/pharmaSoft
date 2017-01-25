package com.hms.common.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hms.common.dao.IUserDao;
import com.hms.common.pojo.User;

@Service
public class UserServiceImpl implements IUserService 
{
    IUserDao userDao;

	public void setUserDao(IUserDao userDao) 
	{
	       this.userDao = userDao;
	}

	public User getUser(String strUserName, String strPassword)
	{
		return userDao.getUser(strUserName, strPassword);
	}
	
	public User searchUserByEmployeeID(String strEmployee){
		return userDao.searchUserByEmployeeID(strEmployee);
	}

	public int createUserForActivation(User objUser, User objLoggedUser){
		return userDao.createUserForActivation(objUser, objLoggedUser);
		
	}
	
	public int changeUserPassword(User objUser){
		return userDao.changeUserPassword(objUser);
	}

}
