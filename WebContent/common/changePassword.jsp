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
	<script type="text/javascript">
		function changePassword(){
			document.changePasswordForm.action = "${pageContext.request.contextPath}/pharma/user/changePassword.html";
			document.changePasswordForm.method = "POST";
			document.changePasswordForm.submit();
		}
	</script>
		<style>
		 input[type=text]:focus, textarea:focus, select:focus
		 {
    		background-color: #FFFFC2;
		 }
		</style>
</head>
<body>
  <table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
   <form:form name="changePasswordForm" action="" method="get" modelAttribute="user">
		<tr>
			<td colspan="3">
				 <table border="0" cellspacing="0" cellpadding="2" width="50%" align="center">
				 	<tr valign="top">
				 		<td width="50%" class="TD_HEADER_BAND" colspan="3" align="left" style="padding: 5px; height: 10px;font-size: 10px;text-align: center; vertical-align: middle;">
				 			Change Password
				 		</td>
				 	</tr>
				</table>  
			</td>
		</tr>
		<tr style="line-height: 10px;">
			<td>
				&nbsp;
			</td>
		</tr>
		<c:if test="${not empty message}">
			<tr style="line-height: 10px;">
				<td>
					&nbsp;
				</td>
			</tr>
			<tr>
				<td colspan="3" align="left">
					 <table border="0" cellspacing="0" cellpadding="2" width="50%" align="center">
					 	<tr valign="top">
					 		<td width="50%" class="" colspan="3" align="left" style="color: red; font-weight:bold; padding: 5px; height: 10px;font-size: 12px;vertical-align: middle;">
					 			<c:out value="${message}"/>
					 			&nbsp;&nbsp;
					 			<c:set var="reLogin" value="${pageContext.request.contextPath}/"/>
					 			<a href="${reLogin }">ReLogin</a>
					 		</td>
					 	</tr>
					 </table>
				</td>
			</tr>
			<tr style="line-height: 10px;">
				<td>
					&nbsp;
				</td>
			</tr>
		</c:if>
		<tr>
			<td colspan="3" align="left">
				 <table border="0" cellspacing="0" cellpadding="2" width="50%" align="center">
				 	<tr valign="top">
				 		<td width="50%" class="TD_HEADER_BAND" colspan="3" align="left" style="padding: 5px; height: 10px;font-size: 10px;text-align: center; vertical-align: middle;">
				 			User Information
				 		</td>
				 	</tr>
					<tr>
				 		<td width="20%" class="TD_LBL" align="right" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
				 			 Employee ID 
				 		</td>
				 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px; height: 10px;font-size: 12px;text-align: center; vertical-align: middle;">
				 			 :
				 		</td>
				        <td class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
							<c:out value="${user.employeeID}" />
			             </td>
			         </tr>
					<tr>
				 		<td width="20%" class="TD_LBL" align="right" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
				 			 Employee Name 
				 		</td>
				 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px; height: 10px;font-size: 12px;text-align: center; vertical-align: middle;">
				 			 :
				 		</td>
				        <td class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
							<c:out value="${user.employeeDisplayName}" />
			             </td>
			         </tr>
					<tr>
				 		<td width="20%" class="TD_LBL" align="right" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
				 			 Department 
				 		</td>
				 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px; height: 10px;font-size: 12px;vertical-align: middle;">
				 			 :
				 		</td>
				        <td class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
							<c:out value="${user.employeeDepartment}" />
			             </td>
			         </tr>
					<tr>
				 		<td width="20%" class="TD_LBL" align="right" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
				 			 Designation
				 		</td>
				 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
				 			 :
				 		</td>
				        <td class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
							<c:out value="${user.employeeDesignation}" />
			             </td>
			         </tr>
					<tr>
				 		<td width="20%" class="TD_LBL" align="right" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
				 			 New Password 
				 		</td>
				 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px; height: 10px;font-size: 12px;vertical-align: middle;">
				 			 :
				 		</td>
				        <td class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
			             	 <form:input path="newPassword" style="width:250px;height:32px;" cssStyle="background:url('../../images/banner_bg.jpg') no-repeat left center; 
									background-color:#99C68E; font-size:12px;
									width: 200px; height: 30px; color: white;font-weight:bold; padding: 5px;"
	 						 />
			             </td>
			         </tr>
					<tr>
				 		<td width="20%" class="TD_LBL" align="right" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
				 			 Confirm New Password 
				 		</td>
				 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px; height: 10px;font-size: 12px;vertical-align: middle;">
				 			 :
				 		</td>
				        <td class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px; vertical-align: middle;">
			             	 <form:input path="confirmPassword" style="width:250px;height:32px;" cssStyle="background:url('../../images/banner_bg.jpg') no-repeat left center; 
									background-color:#99C68E; font-size:12px;
									width: 200px; height: 30px; color: white;font-weight:bold; padding: 5px;"
	 						 />
			             </td>
			         </tr>
				</table>  
			</td>
		</tr>
		<tr style="line-height: 10px;">
			<td>
				&nbsp;
			</td>
		</tr>
		<tr>
			<td align="center">
				<input type="button" class="BTN" value="Change Password" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 120px; height: 40px; font-weight:bold; color: blue;background-color:#EDDA74;" onclick="changePassword();"/>
				<input type="button" class="BTN" value="Close" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 120px; height: 40px; font-weight:bold; color: blue;background-color:#EDDA74;" onclick="window.close();"/>
			</td>
		</tr>
	</form:form>
</table>
</body>
</html>