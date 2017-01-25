package com.hms.pharmacy.inventory.service;

import java.util.List;
import java.util.SortedMap;

import com.hms.pharmacy.inventory.model.MedicineGeneric;

public interface IGenericService 
{
	public List<MedicineGeneric> searchGenericsByKeyWord(String strKeyWord);
}
