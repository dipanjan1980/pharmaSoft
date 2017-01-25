package com.hms.pharmacy.inventory.service;

import java.util.List;
import java.util.SortedMap;

import org.springframework.stereotype.Service;

import com.hms.pharmacy.inventory.dao.IMedicineGenericDao;
import com.hms.pharmacy.inventory.model.MedicineGeneric;

@Service
public class GenericServiceImpl implements IGenericService 
{
	IMedicineGenericDao genericDao;
	
	public void setGenericDao(IMedicineGenericDao genericDao) 
	{
		this.genericDao = genericDao;
	}


	public List<MedicineGeneric> searchGenericsByKeyWord(String strKeyWord)
	{
		return genericDao.searchGenericsByKeyWord(strKeyWord);
	}
}
