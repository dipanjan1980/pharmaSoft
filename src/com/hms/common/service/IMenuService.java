package com.hms.common.service;

import java.util.List;
import java.util.Map;

import com.hms.common.pojo.*;

public interface IMenuService 
{
	public List<Menu> getUserMenu(User objUser, String strMainMenuCode);	
}
