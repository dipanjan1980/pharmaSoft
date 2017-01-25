package com.hms.pharmacy.inventory.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import com.hms.common.pojo.User;
import com.hms.pharmacy.inventory.model.ItemCategory;
import com.hms.util.HmsUtil;

import javax.sql.DataSource;  

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class ItemCategoryDaoImpl implements IItemCategoryDao
{
	@Autowired
	DataSource ds;
	
	public void setDs(DataSource ds) {
		this.ds = ds;
	}

	public List<ItemCategory> searchAutoSuggestItemCategory(String strSearchString)
	{
		StringBuilder sbSql = null;
		JdbcTemplate jTemplate = null;
		List<ItemCategory> itemCategories = null;
		if(strSearchString != null && !strSearchString.equals(""))
		{
			jTemplate = new JdbcTemplate(ds);
			/*sbSql = new StringBuilder();
			sbSql.append("select *  ");
			sbSql.append("from ITEM_CATEGORY_MASTER ");
			sbSql.append("where CATEGORY_NAME LIKE '" + strSearchString.trim() + "%'  ");
			sbSql.append("and CATEGORY_IS_ACTIVE = 'Y'  ");*/

			sbSql = new StringBuilder();
			sbSql.append("select *  ");
			sbSql.append("from DRUG_MANUFACTURER_MASTER ");
			sbSql.append("where DRUG_MFG_NAME LIKE '" + strSearchString.trim() + "%'  ");
			sbSql.append("and IS_ACTIVE = 'Y'  LIMIT 10");
			RowMapper<ItemCategory> mapper = new RowMapper<ItemCategory>() 
			{  	
				 public ItemCategory mapRow(ResultSet rs, int rowNum) throws SQLException
				 {
					 ItemCategory objItemCategory = new ItemCategory();
					 objItemCategory.setCategoryName(rs.getString("DRUG_MFG_NAME"));
					 objItemCategory.setCategoryID(rs.getString("DRUG_MFG_ID"));
					 return objItemCategory;
				 }
		     };
		   			
			itemCategories = jTemplate.query(sbSql.toString(), mapper);
		}
		return itemCategories;
	}

}
