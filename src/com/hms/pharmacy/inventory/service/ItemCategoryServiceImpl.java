package com.hms.pharmacy.inventory.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.hms.pharmacy.inventory.dao.IItemCategoryDao;
import com.hms.pharmacy.inventory.model.ItemCategory;

@Service
public class ItemCategoryServiceImpl implements IItemCategoryService 
{
    IItemCategoryDao itemCategoryDao;

	public void setItemCategoryDao(IItemCategoryDao itemCategoryDao) 
	{
	       this.itemCategoryDao = itemCategoryDao;
	}

	public List<ItemCategory> searchAutoSuggestItemCategory(String strSearchString)
	{
		return itemCategoryDao.searchAutoSuggestItemCategory(strSearchString);
	}

}
