package com.hms.common.pojo;

public class Menu
{
	public String menuID;
	public String mainMenuCode;
	public String menuDisplayName;
	public String menuSubCategory;
	public String menuActionCode;
	public int 	  menuSequence;
	public String menuPath;
	public String menuIsActive;
	
	public String canAdd;
	public String canEdit;
	public String canDelete;
	public String canApprove;
	public String canPrint;
	
	public String getMenuID() {
		return menuID;
	}

	public void setMenuID(String menuID) {
		this.menuID = menuID;
	}

	public String getMainMenuCode() {
		return mainMenuCode;
	}

	public void setMainMenuCode(String mainMenuCode) {
		this.mainMenuCode = mainMenuCode;
	}

	public String getMenuDisplayName() {
		return menuDisplayName;
	}

	public void setMenuDisplayName(String menuDisplayName) {
		this.menuDisplayName = menuDisplayName;
	}

	public String getMenuSubCategory() {
		return menuSubCategory;
	}

	public void setMenuSubCategory(String menuSubCategory) {
		this.menuSubCategory = menuSubCategory;
	}

	public String getMenuActionCode() {
		return menuActionCode;
	}

	public void setMenuActionCode(String menuActionCode) {
		this.menuActionCode = menuActionCode;
	}

	public int getMenuSequence() {
		return menuSequence;
	}

	public void setMenuSequence(int menuSequence) {
		this.menuSequence = menuSequence;
	}
	
	public String getMenuPath() {
		return menuPath;
	}

	public void setMenuPath(String menuPath) {
		this.menuPath = menuPath;
	}

	public String getMenuIsActive() {
		return menuIsActive;
	}

	public void setMenuIsActive(String menuIsActive) {
		this.menuIsActive = menuIsActive;
	}

	public String getCanAdd() {
		return canAdd;
	}

	public void setCanAdd(String canAdd) {
		this.canAdd = canAdd;
	}

	public String getCanEdit() {
		return canEdit;
	}

	public void setCanEdit(String canEdit) {
		this.canEdit = canEdit;
	}

	public String getCanDelete() {
		return canDelete;
	}

	public void setCanDelete(String canDelete) {
		this.canDelete = canDelete;
	}
	
	public String getCanApprove() {
		return canApprove;
	}

	public void setCanApprove(String canApprove) {
		this.canApprove = canApprove;
	}

	public String getCanPrint() {
		return canPrint;
	}

	public void setCanPrint(String canPrint) {
		this.canPrint = canPrint;
	}
}
