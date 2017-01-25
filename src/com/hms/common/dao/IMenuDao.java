package com.hms.common.dao;

import java.util.List;

import com.hms.common.pojo.Menu;
import com.hms.common.pojo.User;

public interface IMenuDao 
{
	public List<Menu> getUserMenu(User objUser, String strMainMenuCode);	
}
