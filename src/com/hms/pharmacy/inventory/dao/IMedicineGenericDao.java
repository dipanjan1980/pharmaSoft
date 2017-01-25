package com.hms.pharmacy.inventory.dao;

import java.util.List;
import java.util.SortedMap;

import com.hms.pharmacy.inventory.model.MedicineGeneric;

public interface IMedicineGenericDao 
{
	public List<MedicineGeneric> searchGenericsByKeyWord(String strKeyWord);
}
