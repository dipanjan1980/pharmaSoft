package com.hms.common.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import com.hms.common.pojo.User;
import com.hms.util.HmsUtil;

import javax.sql.DataSource;  

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@SuppressWarnings("unused")
@Repository
public class UserDaoImpl implements IUserDao  
{
	@Autowired
	DataSource ds;
	
	public void setDs(DataSource ds) {
		this.ds = ds;
	}

	public User getUser(String strUserName, String strPassword)
	{
		StringBuilder sbSql = null;
		JdbcTemplate jTemplate = null;
		List<User> users = null;
		User objUser = null;
		if(strUserName != null && strPassword!= null)
		{
			jTemplate = new JdbcTemplate(ds);
			sbSql = new StringBuilder();
			sbSql.append("select *  ");
			sbSql.append("from USER_MASTER U ");
			sbSql.append("where USER_LOGIN_ID = '" + strUserName + "' ");
			sbSql.append("and USER_LOGIN_PWD =  '" + strPassword + "'  ");
			sbSql.append("and U.USER_IS_ACTIVE = 'Y'  ");
			RowMapper<User> mapper = new RowMapper<User>() 
			{  
				 public User mapRow(ResultSet rs, int rowNum) throws SQLException
				 {
					 User objUser = new User();
					 objUser.setUserDisplayName(rs.getString("USER_DISPLAY_NAME"));
					 objUser.setUserName(rs.getString("USER_LOGIN_ID"));
					 objUser.setPassword(rs.getString("USER_LOGIN_PWD"));
					 objUser.setUserID(rs.getString("USER_AUTO_ID"));
					 return objUser;
				 }
		     };
		   			
			users = jTemplate.query(sbSql.toString(), mapper);
			if(users != null && !users.isEmpty())
				objUser = users.get(0);
		}
		
		return objUser;
	}

	
	public User searchUserByEmployeeID(String strEmployeeID) 
	{
		StringBuilder sbSql = null;
		JdbcTemplate jTemplate = null;
		List<User> users = null;
		User objUser = null;
		
		try
		{
			if(strEmployeeID != null && !strEmployeeID.equals(""))
			{
				jTemplate = new JdbcTemplate(ds);
				sbSql = new StringBuilder();
				sbSql.append("select E.*, U.*  ");
				sbSql.append("from EMPLOYEE_MASTER E LEFT OUTER JOIN USER_MASTER U ");
				sbSql.append("ON E.EMPLOYEE_ID = U.USER_EMPLOYEE_ID ");
				sbSql.append("where EMPLOYEE_ID = '" + strEmployeeID.trim() + "' ");
				sbSql.append("and E.IS_ACTIVE = 'Y'  ");
				RowMapper<User> mapper = new RowMapper<User>() 
				{  
					 public User mapRow(ResultSet rs, int rowNum) throws SQLException
					 {
						 User objUser = new User();
						 //objUser.setEmployeeID(rs.getString("EMPLOYEE_ID"));
						 //objUser.setEmployeeDisplayName(rs.getString("EMPLOYEE_DISPLAY_NAME"));
						 //objUser.setEmployeeDesignation(rs.getString("EMPLOYEE_DESIGNATION"));
						 //objUser.setEmployeeDepartment(HmsUtil.departmentMap().get(rs.getString("EMPLOYEE_DEPARTMENT_CODE")));
						 //objUser.setEmployeeDOJ(rs.getDate("EMPLOYEE_DOJ"));
						 //objUser.setEmployeeMobile(rs.getString("EMPLOYEE_MOBILE"));
						 //objUser.setUserShortName(rs.getString("USER_SHORT_NAME"));
						 						 
						 return objUser;
					 }
			     };
			   			
				users = jTemplate.query(sbSql.toString(), mapper);
				if(users != null && !users.isEmpty())
					objUser = users.get(0);
			}
		}
		catch(Exception e)
		{
			System.err.println("Exception from UserDaoImpl:::" + e.getMessage());
		}
		return objUser;
	}

	@SuppressWarnings("unused")
	public int createUserForActivation(User objUser, User objLoggedUser) 
	{
		StringBuilder sbSql = null;
		JdbcTemplate jTemplate = null;
		List<User> users = null;
		int intInsert = 0;
		try
		{
			if(objUser != null)
			{
				jTemplate = new JdbcTemplate(ds);
				sbSql = new StringBuilder();
				sbSql.append("insert into USER_MASTER( ");
				sbSql.append("USER_AUTO_ID, ");
				sbSql.append("USER_EMPLOYEE_ID, ");
				sbSql.append("USER_SHORT_NAME, ");
				sbSql.append("USER_ROLE, ");
				sbSql.append("USER_LOGIN_ID, ");
				sbSql.append("USER_LOGIN_PWD, ");
				sbSql.append("CREATED_BY, ");
				sbSql.append("CREATE_DATE) ");
				sbSql.append("values(?, ?, ?, ?, ?, ?, ?, ?) ");
				intInsert = jTemplate.update(sbSql.toString(), new Object[]{
					//objUser.getEmployeeAutoID(),
					//objUser.getEmployeeID(),
					objUser.getUserShortName(),
					objUser.getUserGroupID(),
					objUser.getUserName(),
					objUser.getPassword(),
					//objLoggedUser.getEmployeeAutoID(),
					new SimpleDateFormat("yyyy-MM-dd").parse(HmsUtil.getCurrentDate("yyyy-MM-dd"))
					//new SimpleDateFormat("yyyy-MM-dd").parse("2015-04-11")
				}
				);
			}
		}
		catch(Exception e)
		{
			System.err.println("Exception from UserDaoImpl/createUserForActivation:::" + e.getMessage());
		}
		return intInsert;
	}

	@SuppressWarnings("unused")
	public int changeUserPassword(User objUser) 
	{
		StringBuilder sbSql = null;
		JdbcTemplate jTemplate = null;
		List<User> users = null;
		int intUpdate = 0;
		
		try
		{
			if(objUser != null)
			{
				jTemplate = new JdbcTemplate(ds);
				sbSql = new StringBuilder();
				sbSql.append("update USER_MASTER ");
				sbSql.append("set USER_LOGIN_PWD = ?, ");
				sbSql.append("IS_PASSWORD_CHANGED = ?, ");
				sbSql.append("IS_ACTIVE = ? ");
				sbSql.append("where USER_EMPLOYEE_ID = ? ");
				//intUpdate = jTemplate.update(sbSql.toString(), new Object[]{objUser.getNewPassword(), "Y", "Y", objUser.getEmployeeID()});
			}
		}
		catch(Exception e)
		{
			System.err.println("Exception from UserDaoImpl/changeUserPassword:::" + e.getMessage());
		}
		return intUpdate;
	}
}
