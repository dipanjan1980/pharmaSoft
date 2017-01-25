package com.hms.common.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.hms.common.pojo.Menu;
import com.hms.common.pojo.User;

@SuppressWarnings("unused")
@Repository
public class MenuDaoImpl implements IMenuDao
{
	@Autowired
	DataSource ds;
	
	public void setDs(DataSource ds) {
		this.ds = ds;
	}
	
	public List<Menu> getUserMenu(User objUser, String strMainMenuCode)
	{
		List<Menu> arlMenu = null;
		StringBuilder sbSql = null;
		JdbcTemplate jTemplate = null;

		try
		{
				if(null != objUser)
				{
					jTemplate = new JdbcTemplate(ds);
					sbSql = new StringBuilder();
					sbSql.append("select  ");
					sbSql.append("M.Menu_Display_Name, ");
					sbSql.append("M.Menu_Path, ");
					sbSql.append("M.Menu_Sub_category, ");
					sbSql.append("P.Can_Add, ");
					sbSql.append("P.Can_Edit, ");
					sbSql.append("P.Can_Delete, ");
					sbSql.append("P.Can_Approve, ");
					sbSql.append("P.Can_Print ");
					sbSql.append("from ");
					sbSql.append("Menu_Master M, ");
					sbSql.append("User_Group_Master G, ");
					sbSql.append("User_Group_Permission P ");
					sbSql.append("where G.User_Group_Id = '" + objUser.getUserID().trim() + "' ");
					sbSql.append("and M.Main_Menu_Code = '" + strMainMenuCode.trim() + "'  ");
					sbSql.append("and G.User_Group_Id = P.User_Group_Id ");
					sbSql.append("and P.Menu_Id = M.Menu_Id ");
					sbSql.append("and M.Menu_Is_Active = 'Y' ");
					sbSql.append("and P.Can_Access = 'Y' ");
					sbSql.append("order by M.Menu_Sequence ");
					RowMapper<Menu> mapper = new RowMapper<Menu>() 
					{  
						 public Menu mapRow(ResultSet rs, int rowNum) throws SQLException
						 {
							 Menu objMenu = new Menu();
							 objMenu.setMenuDisplayName(rs.getString("Menu_Display_Name"));
							 objMenu.setMenuPath(rs.getString("Menu_Path"));
							 objMenu.setMenuSubCategory(rs.getString("Menu_Sub_category"));
							 objMenu.setCanAdd(rs.getString("Can_Add"));
							 objMenu.setCanEdit(rs.getString("Can_Edit"));
							 objMenu.setCanDelete(rs.getString("Can_Delete"));
							 objMenu.setCanApprove(rs.getString("Can_Approve"));
							 objMenu.setCanPrint(rs.getString("Can_Print"));
							 
							 return objMenu;
						 }
				     };
				     
				     arlMenu = jTemplate.query(sbSql.toString(), mapper);
				}
		}
		catch(Exception ex)
		{
			System.err.println(ex.getMessage());
		}
		
		return arlMenu;
	}
	
}
