package com.hms.pharmacy.inventory.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.SortedMap;

import com.hms.common.pojo.Menu;
import com.hms.common.pojo.User;
import com.hms.pharmacy.inventory.model.ItemCategory;
import com.hms.pharmacy.inventory.model.MedicineGeneric;
import com.hms.util.HmsUtil;

import javax.sql.DataSource;  

import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
@SuppressWarnings("unused")
public class MedicineGenericDaoImpl implements IMedicineGenericDao 
{
	@Autowired
	DataSource ds;
	
	public void setDs(DataSource ds) {
		this.ds = ds;
	}

	public List<MedicineGeneric> searchGenericsByKeyWord(String strKeyWord)
	{
		List<MedicineGeneric> arlGenerics = null;
		List<MedicineGeneric> tmpGenerics = null;
		StringBuilder sbSql = null;
		JdbcTemplate jTemplate = null;

		try
		{
			
			if(strKeyWord != null && !strKeyWord.equals(""))
			{
				jTemplate = new JdbcTemplate(ds);
				sbSql = new StringBuilder();
				sbSql.append("select  ");
				sbSql.append("Med_Generic_Id, ");
				sbSql.append("Med_Generic_Name, ");
				sbSql.append("Med_Generic_Short_Name ");
				sbSql.append("from ");
				sbSql.append("Medicine_Generic_Master ");
				sbSql.append("where Is_Active  = 'Y' ");
				sbSql.append("and (Med_Generic_Name  like '" + strKeyWord.trim() + "%'   ");
				sbSql.append("or Med_Generic_Short_Name  like '" + strKeyWord.trim() + "%')   ");
				sbSql.append("order by Med_Generic_Name ");
				RowMapper<MedicineGeneric> mapper = new RowMapper<MedicineGeneric>() 
				{  
					 public MedicineGeneric mapRow(ResultSet rs, int rowNum) throws SQLException
					 {
						 MedicineGeneric objGeneric = new MedicineGeneric();
						 objGeneric.setGenericID(rs.getString("Med_Generic_Id"));
						 objGeneric.setGenericName(rs.getString("Med_Generic_Name"));
						 objGeneric.setGenericShortName(rs.getString("Med_Generic_Short_Name"));
						 
						 return objGeneric;
					 }
			     };
			     
			     arlGenerics = jTemplate.query(sbSql.toString(), mapper);
			     /*arlGenerics = new ArrayList<MedicineGeneric>();
			     for (MedicineGeneric gen : tmpGenerics){
			    	 MedicineGeneric med = new MedicineGeneric();
			    	 med.setGenericID(gen.getGenericID());
			    	 med.setGenericShortName(gen.getGenericShortName());
			    	 arlGenerics.add(med);
			     }*/
				
			}
		}
		catch(Exception ex)
		{
			System.err.println(ex.getMessage());
		}
		
		return arlGenerics;
	}
	
}
