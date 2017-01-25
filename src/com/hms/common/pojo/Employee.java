package com.hms.common.pojo;

import java.util.Date;

/* This is base class of User class */
public class Employee 
{
	private String employeeAutoID;
	private String employeeID;
	private String employeeFname;
	private String employeeMname;
	private String employeeLname;
	private String employeeDisplayName;
	private Date   employeeDOB;
	private String employeePhone;
	private String employeeMobile;
	private String employeeDesignation;
	private String employeeDepartment;
	private Date   employeeDOJ;
	private Date   createdate;

	public Employee() 
	{
		this.employeeAutoID = null;
		this.employeeFname = null;
		this.employeeMname = null;
		this.employeeLname = null;
		this.employeeDisplayName = null;
		this.employeeDOB = null;
		this.employeePhone = null;
		this.employeeMobile = null;
		this.employeeDesignation = null;
		this.employeeDepartment = null;
	}

	public Employee(String employeeAutoID, String employeeFname,
					String employeeMname, String employeeLname,
					String employeeDisplayName, Date employeeDOB, String employeePhone,
					String employeeMobile, String employeeDesignation,
					String employeeDepartment
					) 
	{
		super();
		this.employeeAutoID = employeeAutoID;
		this.employeeFname = employeeFname;
		this.employeeMname = employeeMname;
		this.employeeLname = employeeLname;
		this.employeeDisplayName = employeeDisplayName;
		this.employeeDOB = employeeDOB;
		this.employeePhone = employeePhone;
		this.employeeMobile = employeeMobile;
		this.employeeDesignation = employeeDesignation;
		this.employeeDepartment = employeeDepartment;
	}
	
	public String getEmployeeAutoID() {
		return employeeAutoID;
	}
	public void setEmployeeAutoID(String employeeAutoID) {
		this.employeeAutoID = employeeAutoID;
	}
	public String getEmployeeFname() {
		return employeeFname;
	}
	public void setEmployeeFname(String employeeFname) {
		this.employeeFname = employeeFname;
	}
	public String getEmployeeMname() {
		return employeeMname;
	}
	public void setEmployeeMname(String employeeMname) {
		this.employeeMname = employeeMname;
	}
	public String getEmployeeLname() {
		return employeeLname;
	}
	public void setEmployeeLname(String employeeLname) {
		this.employeeLname = employeeLname;
	}
	public String getEmployeeDisplayName() {
		return employeeDisplayName;
	}
	public void setEmployeeDisplayName(String employeeDisplayName) {
		this.employeeDisplayName = employeeDisplayName;
	}
	public Date getEmployeeDOB() {
		return employeeDOB;
	}
	public void setEmployeeDOB(Date employeeDOB) {
		this.employeeDOB = employeeDOB;
	}
	public String getEmployeePhone() {
		return employeePhone;
	}
	public void setEmployeePhone(String employeePhone) {
		this.employeePhone = employeePhone;
	}
	public String getEmployeeMobile() {
		return employeeMobile;
	}
	public void setEmployeeMobile(String employeeMobile) {
		this.employeeMobile = employeeMobile;
	}
	public String getEmployeeDesignation() {
		return employeeDesignation;
	}
	public void setEmployeeDesignation(String employeeDesignation) {
		this.employeeDesignation = employeeDesignation;
	}
	public String getEmployeeDepartment() {
		return employeeDepartment;
	}
	public void setEmployeeDepartment(String employeeDepartment) {
		this.employeeDepartment = employeeDepartment;
	}

	public String getEmployeeID() {
		return employeeID;
	}

	public void setEmployeeID(String employeeID) {
		this.employeeID = employeeID;
	}

	public Date getEmployeeDOJ() {
		return employeeDOJ;
	}

	public void setEmployeeDOJ(Date employeeDOJ) {
		this.employeeDOJ = employeeDOJ;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}
		
	
}
