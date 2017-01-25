package com.hms.pharmacy.inventory.service;

import java.util.List;

import com.hms.pharmacy.inventory.model.ItemCategory;

public interface IItemCategoryService 
{
	public List<ItemCategory> searchAutoSuggestItemCategory(String strSearchString);
}
