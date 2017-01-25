<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<spring:url value="/resources/css/easyui.css" var="easyUi"/>  
	<spring:url value="/resources/css/style.css" var="styleCss"/>
	<link href="${styleCss}" rel="stylesheet"/>
	<link href="${easyUi}" rel="stylesheet"/>
	<spring:url value="/resources/js/jquery.min.js" var="jqMin"/>  
	<spring:url value="/resources/js/jquery.easyui.min.js" var="jqeasyMin"/>  
	<script type="text/javascript" src="${jqMin}"></script>
	<script type="text/javascript" src="${jqeasyMin}"></script>
	<script type="text/javascript">
		function addNew(){
				document.commodityForm.action = "${pageContext.request.contextPath}/pharma/inventory/itemCategory/loadItemCategoryAdd.html";
				document.commodityForm.target="content";
				document.commodityForm.submit();
		}

		function loadCategoryList(objSearchField, dropListFieldName)
		{
			generateAutoCompleteDataList(objSearchField, dropListFieldName);
		}
	
		function generateAutoCompleteDataList(objSearchField, dropListFieldName)
		{
			searchFieldName = objSearchField.name;
			searchFieldValue = objSearchField.value;
		    dropListFieldNme = dropListFieldName;
	        if(window.XMLHttpRequest){
	            request = new XMLHttpRequest();
	        } 
	        else if (window.ActiveXObject){
	            request = new ActiveXObject("Msxml2.XMLHTTP");
	            if (!request){
	                request = new ActiveXObject("Microsoft.XMLHTTP");
	            }
	        }
	        if(request){
	            var url = "${pageContext.request.contextPath}/pharma/inventory/autoSuggest/autoSuggestItemCategoryList.html?SEARCH_STRING=" + searchFieldValue;
	            request.open("POST", url, true);
	            request.onreadystatechange = populateAutoCompleteDataList;
	            request.send(null);
	        } 
	        else{
	            alert("Your browser does not permit the use of all the features of this application!!!");
	        }
		}
	
		function populateAutoCompleteDataList(){
		    if(request.readyState == 4){
		        if(request.status == 200){
	        		document.getElementById(dropListFieldNme).innerHTML = request.responseText;
		        }
		    }
		}
	
		function selectMe(obj){
		    obj.style.backgroundColor = "#E0FFFF";
		}
	
		function deselectMe(obj){
		    obj.style.backgroundColor = "#FFEBCD";
		}
	
		function populateLblValue(lbl,value){
		    document.getElementById('categoryList').value = lbl;
		    document.getElementById('catID').value = value;
		    document.getElementById(dropListFieldNme).innerHTML = "";
		}
</script>
<style type="text/css">
</style>
</head>
	<body class="easy-layout">
		<form name="commodityForm"  action="">
  		<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center" style="border: 3px inset green;">
  			<tr>
  				<td>
					 <table border="0" cellspacing="0" cellpadding="5" width="100%" align="center">
					 	<tr valign="top">
					 		<td width="50%" class="TD_HEADER_BAND" align="left" style="padding: 5px; height: 40px;font-size: 15px;text-align: center; vertical-align: middle;">
					 			Item Category Master
					 		</td>
					 	</tr>
					</table>  
				</td>
				</tr>
				<tr style="line-height:5px;">
					<td>&nbsp;</td>
				</tr>	
				<%-- Search Table --%>
				<tr>
					<td>		
						 <table width="100%" border="0" cellspacing="1" cellpadding="0" align="left" class="TBL_SEARCH">
						 	<tr>
						 		<td width="10%" align="left" align="left" colspan="3">
									<input type="radio" name="statusType" value="1" checked="checked"/><font style="color: blue; font-weight: bold;">All</font>
									<input type="radio" name="statusType" value="A"/><font style="color: green; font-weight: bold;">Active</font>
									<input type="radio" name="statusType" value="I"/><font style="color: red; font-weight: bold;">In Active</font>
						 		</td>
						   		<td align="right" colspan="3">
									<input type="button" class="BTN" value="Add New (ctrl + N)" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 120px; height: 40px; font-weight:bold; color: blue;background-color:#EDDA74" onclick="addNew();">
									<input type="button" class="BTN" value="Delete (ctrl + D)" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 120px; height: 40px; font-weight:bold; color: blue;background-color:#EDDA74">
									<input type="button" class="BTN" value="Print (ctrl + P)" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 120px; height: 40px;font-weight:bold; color: blue;background-color:#EDDA74">
									<input type="button" class="BTN" value="Export (ctrl + E)" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 120px; height: 40px; font-weight:bold; color: blue;background-color:#EDDA74">
						   		</td>
						 	</tr>
							<tr style="line-height:5px;">
								<td>&nbsp;</td>
							</tr>	
						 	<tr>
						 		<td width="15%" class="TD_LBL" align="left" style="font-size: 12px;">
						 			Search By Name
						 		</td>
						 		<td width="5%" class="TD_LBL" align="center">
						 			:
						 		</td>
						 		<td class="" align="left">
					            	 <input type="text" id="categoryList" name="categoryList"  autocomplete="off"
					            	 		style="background:url('../../images/banner_bg.jpg') no-repeat left center; 
											background-color:#99C68E; font-size:12px;
											width: 250px; height: 30px; color: white;font-weight:bold; padding: 5px;"
											onkeyup="javascript: loadCategoryList(this,'divCategoryList');"
										/>
					               <div id="divCategoryList" align="left" style="width: 150px;"></div>
					            	 <input type="hidden" id="catID" name="catID"/>
						 		</td>
						 	</tr>
						</table>	<%-- End of Search Table --%>	
				 	</td>
			   	</tr>
				<tr style="line-height:10px;">
					<td>&nbsp;</td>
				</tr>	
	  			<tr>
	  				<td colspan="5">
						 <table border="0" cellspacing="0" cellpadding="5" width="100%" align="left">
							<tr>
								<td style="color: blue; font-size: 12px; font-family: Courier;">
									No of Records Found : 20
								</td>
								<td style="color: blue; font-size: 12px; font-family: Courier;" align="right">
									<a href="#">Prev</a> || <a href="#">Next</a>
									Go To 
								<select class="DDL" style="background:url('../../images/banner_bg.jpg') no-repeat left center; 
													background-color:#99C68E; font-size:10px;
													width: 40px; height: 25px; color: white;font-weight:bold;">
										<option value=""></option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
									</select>
								</td>
							</tr>	
						</table>  
					</td>
				</tr>
				<tr style="line-height:10px;">
					<td>&nbsp;</td>
				</tr>	
  				<tr>
	  				<td>	  					
						 <table border="0" class="imagetable" cellspacing="0" cellpadding="0" width="100%" align="left" style="border: 1px solid #E0ECFF;">
						 	<tr>
						 		<th width="5%" align="center">
						 			&nbsp;
						 		</th>
						 		<th width="5%" align="center">
									SL#
									
						 		</th>
						 		<th width="40%" align="center">
						 			Commodity
						 		</th>
						 		<th width="20%" align="center">
						 			Status
						 		</th>
						 		<th align="center">
						 			Action
						 		</th>
						 	</tr>
						 	<% for(int i = 1; i <= 20; i++ ){ %>
						 	 <tr>
						 	 	<td align="center">
						 	 		<input type="checkbox" />
						 	 	</td>
						 	 	<td align="center">
						 	 		<%=i%>
						 	 	</td>
						 	 	<td align="center">
						 	 		Pharma Drug
						 	 	</td>
						 	 	<td align="center">
						 	 		<% if(i%2 == 0){ %>
						 	 			<font style="color: green; font-weight: bold;">Active</font>
									<% }else{ %>
						 	 			<font style="color: red; font-weight: bold;">In Active</font>		
						 	 		<%} %>													 	 			
						 	 	</td>
						 	 	<td  align="center">
						 	 		<a href="#" style="color: blue">Edit</a>
						 	 	</td>
						 	 </tr>
						 	 <%} %>
						</table>  						
					</td>
			</table> <%-- Outer Table --%> 			
		</form>
	</body>
</html>