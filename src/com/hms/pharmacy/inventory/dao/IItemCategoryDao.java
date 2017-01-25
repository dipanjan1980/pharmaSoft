package com.hms.pharmacy.inventory.dao;

import java.util.List;

import com.hms.pharmacy.inventory.model.ItemCategory;

public interface IItemCategoryDao 
{
	public List<ItemCategory> searchAutoSuggestItemCategory(String strSearchString);
}
