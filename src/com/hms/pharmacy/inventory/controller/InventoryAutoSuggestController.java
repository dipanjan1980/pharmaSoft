package com.hms.pharmacy.inventory.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.hms.pharmacy.inventory.model.ItemCategory;
import com.hms.pharmacy.inventory.service.IItemCategoryService;
import com.hms.pharmacy.inventory.service.ItemCategoryServiceImpl;
import com.hms.util.HmsConstants;

@Controller
@RequestMapping("/pharma/inventory/autoSuggest")
public class InventoryAutoSuggestController 
{
	private IItemCategoryService itemCategoryService;

	@Autowired(required=true)
	@Qualifier(value="itemCategoryService")
	public void setItemCategoryService(IItemCategoryService itemCategoryService) {
		this.itemCategoryService = itemCategoryService;
	}

	@RequestMapping(value = "/autoSuggestItemCategoryList.html", method = RequestMethod.POST)
	public ModelAndView getItemCategory(HttpServletRequest request, @RequestParam(value="SEARCH_STRING", required=true)  String categoryName) 
	{

		List<ItemCategory> itemCategories = null;
		ArrayList<String[]> arlAutoCompleteDataList = null;
		Map<String, Object> model = null;
		
		try
		{
			itemCategories = itemCategoryService.searchAutoSuggestItemCategory(categoryName);
			if(itemCategories != null)
			{
				for(int i = 0; i < itemCategories.size(); i++)
				{
					ItemCategory objItemCategory = itemCategories.get(i);
					if(objItemCategory != null)
					{
		                String[] strArrLabelValue = new String[2];
		                strArrLabelValue[0] = objItemCategory.getCategoryID();
		                strArrLabelValue[1] = objItemCategory.getCategoryName();
		                
		                if(arlAutoCompleteDataList == null)
		                    arlAutoCompleteDataList = new ArrayList<String[]>();
		                arlAutoCompleteDataList.add(strArrLabelValue);
					}
				}
			}

			if(arlAutoCompleteDataList != null)
			{
				model = new HashMap<String, Object>();
				model.put("dataList", arlAutoCompleteDataList);
			}
		}
		catch(Exception e){
			System.err.println(e.getMessage());
		}
		
        return new ModelAndView(HmsConstants.REDIRECT_AJAX_AUTOSUGGEST, model);
	}
}
