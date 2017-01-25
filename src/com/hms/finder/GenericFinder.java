package com.hms.finder;

import java.util.List;
import com.hms.pharmacy.inventory.dao.IMedicineGenericDao;
import com.hms.pharmacy.inventory.model.MedicineGeneric;

public class GenericFinder 
{
	IMedicineGenericDao genericDao;
	public void setGenericDao(IMedicineGenericDao genericDao) {
		this.genericDao = genericDao; 
	}

	
	public List<MedicineGeneric> searchGenericsByKeyWord(String strKeyWord)
	{
		return genericDao.searchGenericsByKeyWord(strKeyWord);		
	}
}
