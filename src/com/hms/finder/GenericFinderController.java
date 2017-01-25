package com.hms.finder;

import java.awt.Desktop;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hms.common.business.UserMenuListBuilder;
import com.hms.common.pojo.Menu;
import com.hms.common.pojo.ReportParams;
import com.hms.common.pojo.User;
import com.hms.pharmacy.inventory.model.MedicineGeneric;
import com.hms.util.HmsConstants;

@SuppressWarnings("unused")
@Controller
@RequestMapping("/genericFinder")
public class GenericFinderController 
{	
	GenericFinder genericFinder;
	MedicineGeneric medicineGeneric;
	public void setGenericFinder(GenericFinder genericFinder){
		this.genericFinder = genericFinder;
	}
	public void setMedicineGeneric(MedicineGeneric medicineGeneric){
		this.medicineGeneric = medicineGeneric;
	}		
	@RequestMapping(value="/loadGenericFinder.html", method=RequestMethod.GET)
	public String doLoadGenericFinder(final HttpServletRequest request, final HttpServletResponse response, Model model) throws Exception 
	{

		System.out.println("**** doLoadGenericFinder *******");
		//Map<String, Object> model = new HashMap<String, Object>();
		User objLoggedInUser = (User)request.getSession().getAttribute(HmsConstants.LOGGED_IN_USER);

		//model.put(HmsConstants.LOGGED_IN_USER, objLoggedInUser);  
		request.getSession().removeAttribute("genericsList");
		request.getSession().removeAttribute("selectedGenericsList");
		model.addAttribute("medicineGeneric", new MedicineGeneric());
		return "finder/genericFinder";
	}

	@RequestMapping(value="/searchGeneric.html", method=RequestMethod.GET)
	public String doSearchGeneric(final HttpServletRequest request, final HttpServletResponse response, Model model) throws Exception 
	{

		System.out.println("**** doSearchGeneric *******");
		User objLoggedInUser = (User)request.getSession().getAttribute(HmsConstants.LOGGED_IN_USER);
		
		String strKeyWord = request.getParameter("searchKey");
		List<MedicineGeneric> arlGenerics = genericFinder.searchGenericsByKeyWord(strKeyWord);
		
		//model.addAttribute("genericsList", arlGenerics);
		request.getSession().setAttribute("genericsList", arlGenerics);
		model.addAttribute("medicineGeneric", new MedicineGeneric());
		return "finder/genericFinder";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/getSelected", method=RequestMethod.GET)
	public String doGetSelectedGeneric(final HttpServletRequest request, final HttpServletResponse response, Model model) throws Exception 
	{

		System.out.println("**** doGetSelectedGeneric *******");
		/*User objLoggedInUser = (User)request.getSession().getAttribute(HmsConstants.LOGGED_IN_USER);
		List<MedicineGeneric> genericsList = (List<MedicineGeneric>) request.getSession().getAttribute("genericsList");
		List<MedicineGeneric> selectedGenericsList = null;
		String[] strArr = (String[])request.getParameterValues("genericID");
		if(strArr != null)
		{
			System.out.println("**** arr length *******" + strArr.length);		
			
			
			System.out.println("**** arr length *******" + genericsList.size());	
			selectedGenericsList = (List<MedicineGeneric>)request.getSession().getAttribute("selectedGenericsList");
			if(selectedGenericsList == null)
					selectedGenericsList = new ArrayList<MedicineGeneric>();
			for(int i =0; i < strArr.length; i++){
				selectedGenericsList.add(genericsList.get(Integer.parseInt(strArr[i]) - 1 ));
			}
		}
		
		genericsList = null;
	
		request.getSession().setAttribute("genericsList", genericsList);
		request.getSession().setAttribute("selectedGenericsList", selectedGenericsList);
		*/
		model.addAttribute("medicineGeneric", new MedicineGeneric());
		
		Desktop.getDesktop().open(new File("C:\\Dipanjan_Personal\\myjar.jar"));
		
		return "finder/genericFinder";
	}
}
