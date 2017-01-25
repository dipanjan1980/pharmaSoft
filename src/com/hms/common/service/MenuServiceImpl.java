package com.hms.common.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.hms.common.dao.IMenuDao;
import com.hms.common.pojo.Menu;
import com.hms.common.pojo.User;

@Service
@SuppressWarnings("unused")
public class MenuServiceImpl implements IMenuService
{
	IMenuDao menuDao;
	
	public void setMenuDao(IMenuDao menuDao) 
	{
	       this.menuDao = menuDao;
	}

	public List<Menu> getUserMenu(User objUser, String strMainMenuCode)
	{
		return menuDao.getUserMenu(objUser, strMainMenuCode);	
	}
}
