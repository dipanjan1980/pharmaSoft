package com.hms.common.business;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hms.common.dao.IMenuDao;
import com.hms.common.pojo.Menu;
import com.hms.common.pojo.User;
import com.hms.util.HmsConstants;

import net.sf.ezmorph.array.ObjectArrayMorpher;

@SuppressWarnings("unused")
public class UserMenuListBuilder 
{
	IMenuDao menuDao;
	public void setMenuDao(IMenuDao menuDao) 
	{
	   this.menuDao = menuDao;
	}

	public Map<String, List<Menu>> createUserMenuList(HttpServletRequest request, HttpServletResponse response, User objLoggedInUser, String strMainMenuCode)
	{
		List<Menu> arlUserMenus = null;
		Map<String, List<Menu>> mapUserMenu = null;
		List<Menu> arlMstList = null;
		List<Menu> arlTxnList = null;
		List<Menu> arlRptList = null;
		
		try
		{
			if(null != strMainMenuCode && !strMainMenuCode.equals(""))
			{				
				objLoggedInUser = (User)request.getSession().getAttribute(HmsConstants.LOGGED_IN_USER);
				arlUserMenus =  menuDao.getUserMenu(objLoggedInUser, strMainMenuCode);
				if(null != arlUserMenus)
				{
					arlMstList = new ArrayList<Menu>();
					arlTxnList = new ArrayList<Menu>();
					arlRptList = new ArrayList<Menu>();
					switch(strMainMenuCode)
					{
						case HmsConstants.ADMIN_MENU_PARENT_CODE :		
						mapUserMenu = new HashMap<String, List<Menu>>();
						mapUserMenu.put(null, arlUserMenus);
						break;
											
						case HmsConstants.INV_MENU_PARENT_CODE :		
						System.out.println("*****INV01 Menu Creation******");
						for (Menu menu : arlUserMenus) 
						{
							switch(menu.getMenuSubCategory())
							{
								case	"M"	:	arlMstList.add(menu);
												break;
								case	"T" :	arlTxnList.add(menu);
												break;
								case	"R"	:	arlRptList.add(menu);	
							}
						}						
						if(null == mapUserMenu)
							mapUserMenu = new HashMap<String, List<Menu>>();
						mapUserMenu.put("M", arlMstList);
						mapUserMenu.put("T", arlTxnList);
						mapUserMenu.put("R", arlRptList);
						break;
					}					
				}
			}
		}
		catch(Exception ex){
			System.err.println(ex.getMessage());
		}
		
		return mapUserMenu;
		
	}
}
