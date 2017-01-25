<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
	<spring:url value="/resources/css/easyui.css" var="easyUi"/>  
	<spring:url value="/resources/css/style.css" var="styleCss"/>
	<link href="${styleCss}" rel="stylesheet"/>
	<link href="${easyUi}" rel="stylesheet"/>
	<spring:url value="/resources/js/jquery.min.js" var="jqMin"/>  
	<spring:url value="/resources/js/jquery.easyui.min.js" var="jqeasyMin"/>  
	<script type="text/javascript" src="${jqMin}"></script>
	<script type="text/javascript" src="${jqeasyMin}"></script>

	<spring:url value="/resources/js/hms.js" var="hmsJs"/>  
	<script type="text/javascript" src="${hmsJs}"></script>

	<script type="text/javascript">
		function searchEmployee(){
			document.userActivationForm.action = "${pageContext.request.contextPath}/pharma/user/searchUserForAtivation.html";
			document.userActivationForm.method = "POST";
			document.userActivationForm.submit();
		}
		
		function createUser(){
			document.userActivationForm.action = "${pageContext.request.contextPath}/pharma/user/createUserForAtivation.html";
			document.userActivationForm.method = "POST";
			document.userActivationForm.submit();
		}
		
		</script>
		<style>
		 input[type=text]:focus, textarea:focus, select:focus
		 {
    		background-color: #AFEEEE;
    		font-weight: bold;
		 }
		</style>
</head>
<body onFocus="parent_disable();" onclick="parent_disable();">
   <form:form name="userActivationForm" action="" method="post" modelAttribute="user">
  <table cellspacing="0" cellpadding="0" width="80%" align="left" style="border-style: outset; background-color: FFFFE3;">
		<tr valign="top">
			<td colspan="3" valign="top">
				 <table border="0" cellspacing="0" cellpadding="2" width="100%" align="left">
				 	<tr valign="top">
				 		<td width="100%" class="TD_HEADER_BAND" style="height: 20px; text-align: left;" colspan="3" align="left">
				 			User Activation
				 		</td>
				 	</tr>
				</table>  
			</td>
		</tr>
		<tr style="line-height:2px;">
			<td>&nbsp;</td>
		</tr>	
		<tr>
	 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
	 			 Function :	 			 
	 		</td>
	        <td>
				<select class="DDL" style="background-color:white; width:80px;height:30px;font-size:12px; padding: 5px;  text-transform: lowercase;">
					<option value="">-</option>					
					<option value="N">New</option>
					<option value="E">Edit</option>
					<option value="D">Delete</option>
				</select> 
				&nbsp;&nbsp;&nbsp;
				<input type = "button" value="User Finder" style="background: #DCDFFA url(../../resources/images/search.png); height:30px; width: 90px; padding-left:18px; background-repeat: no-repeat; background-position: left;" onclick="finderWindow('loadUserListFinder.html','userList',500,600);"/>										
			</td>
         </tr>
		<tr style="line-height:20px;">
			<td>&nbsp;</td>
		</tr>	
		<tr>
	 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
	 			 Employee ID :
	 		</td>
	        <td>
                <form:input path="userID"  cssClass="TXT_CAP" cssStyle="width:150px;height:25px;font-size:12px; padding: 5px; text-transform : uppercase;"/>
             </td>
         </tr>
         <tr>
	 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
	 			 User Group:
	 		</td>
	        <td>
             	 <form:select   path="userGroupID" cssClass="DDL" 
             	 				cssStyle="width:300px;height:30px;font-size:12px; padding: 5px; text-transform : uppercase;">
					<form:option value="">--Please Select--</form:option>					
					<form:option value="1001">Administrator</form:option>
					<form:option value="1002">Store Manager</form:option>
					<form:option value="1003">Salesman</form:option>
				</form:select>             	 
             </td>
         </tr>
         <tr>
	 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
	 		 	First Name:
	 		</td>
	        <td>
             	 <form:input path="userFName"  cssClass="TXT_CAP" cssStyle="width:300px;height:25px;font-size:12px; padding: 5px; text-transform : uppercase;"/>
             </td>
         </tr>
         <tr>
	 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
	 			 Middle Name:
	 		</td>
	        <td>
             	 <form:input path="userMName"  cssClass="TXT_CAP" cssStyle="width:300px;height:25px;font-size:12px; padding: 5px; text-transform : uppercase;"/>
             </td>
         </tr>
         <tr>
	 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
	 			 Last Name:
	 		</td>
	        <td>
             	 <form:input path="userLName"  cssClass="TXT_CAP" cssStyle="width:300px;height:25px;font-size:12px; padding: 5px; text-transform : uppercase;"/>
             </td>
         </tr>
         <tr>
	 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
	 			 Display Name:
	 		</td>
	        <td>
             	 <form:input path="userDisplayName"  cssClass="TXT_CAP" cssStyle="width:300px;height:25px;font-size:12px; padding: 5px; text-transform : uppercase;"/>
             </td>
         </tr>
         <tr>
	 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
	 			 Address:
	 		</td>
	        <td>
             	 <form:input path="userAddress"  cssClass="TXT_CAP" cssStyle="width:300px;height:25px;font-size:12px; padding: 5px; text-transform : uppercase;"/>
             </td>
         </tr>
         <tr>
	 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
	 			 Mobile No:
	 		</td>
	        <td>
             	 <form:input path="userMobile"  cssClass="TXT_CAP" cssStyle="width:300px;height:25px;font-size:12px; padding: 5px; text-transform : uppercase;"/>
             </td>
         </tr>
         <tr>
	 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
	 			Login Name:
	 		</td>
	        <td>
             	 <form:input path="userName"  cssClass="TXT_CAP" cssStyle="width:300px;height:25px;font-size:12px; padding: 5px; text-transform : uppercase;"/>
             </td>
         </tr>
         <tr>
	 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
	 			Password:
	 		</td>
	        <td>
             	 <form:password path="password"  cssClass="TXT_CAP" cssStyle="width:300px;height:25px;font-size:12px; padding: 5px; text-transform : uppercase;"/>
             </td>
         </tr>
		<tr style="line-height: 70px;">
			<td>
				&nbsp;
			</td>
		</tr>
         <tr>
	 		<td width="100%" colspan="2" class="TD_LBL" align="left" style="padding: 5px; border-top-style: solid; border-top-color:#FFD700; border-top-style: outset; ">
				&nbsp;
	 		</td>	        
         </tr>
         <tr>
         	<td colspan="2">
	           <table cellspacing="0" cellpadding="0" width="100%" align="left">
		           	<tr>
				 		<td width="15%" class="Footer" align="left" style="padding: 5px; height: 10px;text-align: left; vertical-align: top;">
				 			<b>Function  :</b>
				 		</td>
				        <td class="Footer" align="left">
			             	 Add
			             </td>
				 		<td width="15%" class="Footer" align="left" style="padding: 5px; height: 5px;text-align: left; vertical-align: top;">
				 			<b>Create Date :</b>
				 		</td>
				        <td class="Footer">
			             	 15/Oct/2016
			             </td>				 		
		           	</tr>
					<tr style="line-height: 25px;">
						<td>
							&nbsp;
						</td>
					</tr>
			         <tr>
				 		<td width="15%" class="Footer" align="left" style="padding: 5px; height: 5px;text-align: left; vertical-align: top;">
				 			<b>Created By  :</b>
				 		</td>
				        <td class="Footer">
			             	 DIP
			             </td>
				 		<td width="15%" class="Footer" align="left" style="padding: 5px; height: 5px;text-align: left; vertical-align: top;">
				 			<b>Title :</b>
				 		</td>
				        <td class="Footer">
			             	 User Creation
			             </td>				 		
			         </tr>
	         	</table>
	         </td>
         </tr>
		<tr style="line-height: 50px;">
			<td>
				&nbsp;
			</td>
		</tr>
         <tr>
         	<td colspan="2" bgcolor="" style="height:20px;" align="left">
	           <table cellspacing="0" cellpadding="0" width="100%"  style="">
		         <tr>
			 		<td width="100%" class="TD_FOOTER_BAND" align="center" >
						 <input type = "button" value="Clear" style="background: #DCDFFA url(../../resources/images/add_new.png); height:30px; width: 75px; background-repeat: no-repeat; background-position: left;"/>										
						 <input type = "button" value="Save" style="background: #DCDFFA url(../../resources/images/add_new.png); height:30px; width: 75px; background-repeat: no-repeat; background-position: left;"/>										
						 <input type = "button" value="Close" style="background: #DCDFFA url(../../resources/images/add_new.png); height:30px; width: 75px; background-repeat: no-repeat; background-position: left;"/>										
			 		</td>
				</tr>					
				</table>
			</td>
		</tr>
</table>
	</form:form>
</body>
</html>