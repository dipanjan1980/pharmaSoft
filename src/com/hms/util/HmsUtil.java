package com.hms.util;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import com.hms.common.pojo.Department;
import com.hms.common.pojo.UserRole;

import freemarker.template.SimpleDate;

public class HmsUtil 
{
	public static List<UserRole> userRoleList()
	{
		List<UserRole> userRole = new ArrayList<UserRole>();
		UserRole objUserRole = new UserRole();
		objUserRole.setRoleCode("SADMN");
		objUserRole.setRoleName("SYSTEM ADMINISTRATOR");
		userRole.add(objUserRole);
		objUserRole = new UserRole();
		objUserRole.setRoleCode("SUSER");
		objUserRole.setRoleName("SUPER USER");
		userRole.add(objUserRole);
		objUserRole = new UserRole();
		objUserRole.setRoleCode("GUSER");
		objUserRole.setRoleName("GENERAL USER");
		userRole.add(objUserRole);
		return userRole;
	}

	public static Map<String, String> departmentMap()
	{
		Map<String, String> deptMap = new HashMap<String, String>();
		deptMap.put("IT", "INFORMATION TECHNOLOGY");
		deptMap.put("PHY", "PHARMACY");
		deptMap.put("DIA", "DIAGNOSTIC");
		return deptMap;
	}
	
	public static String getCurrentDate(String strDateFormat)
	{
		return new SimpleDateFormat(strDateFormat).format(new Date());
	}
	
	public static String generateAutoID() 
	{
		Random rand = new Random();
		int num = rand.nextInt(9000000) + 1000000;
		Calendar cal = new GregorianCalendar();
		final int timerhour24 = cal.get(Calendar.HOUR_OF_DAY);     // 0..23
	    final int timermin = cal.get(Calendar.MINUTE);
	    final int timerSecond = cal.get(Calendar.SECOND);
	    final int year = Calendar.YEAR;
	    final int month = cal.MONTH;
	    final int day = Calendar.DAY_OF_MONTH;
	    String strRandNo = (""+year).concat((""+month)).concat((""+day)).concat((""+num));
		return strRandNo;
	}
}
