<html>
	<head>
		<title></title>
		<link href="css/sms.css" rel="stylesheet" media="screen"/>
		<script type="text/javascript">
			function addNew(){
 				document.userForm.action = "createUser.jsp";
 				document.userForm.target="main";
 				document.userForm.submit();
			}
		</script>
	</head>
	<body bgcolor="#FFF8DC">
  		<form name="userForm" action="">
  		<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
  			<tr>
  				<td colspan="4">
					 <table border="0" cellspacing="0" cellpadding="5" width="100%" align="center">
					 	<tr valign="top">
					 		<td width="50%" class="TD_HEADER_BAND" align="left" style="padding: 5px">
					 			Company Setup
					 		</td>
					 	</tr>
					</table>  
				</td>
				</tr>
				<tr style="line-height:10px;">
					<td>&nbsp;</td>
				</tr>	
	  			<tr>
	  				<td width="45%" align="left">
						 <table border="0" cellspacing="1" cellpadding="0" width="100%" align="left" style="border:1px solid black;">
						 	<tr valign="top">
						 		<td width="100%" class="TD_HEADER_BAND" align="left" style="padding: 5px" colspan="4">
						 			General Information
						 		</td>
						 	</tr>
						 	<tr>
						 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px;">
						 			Name<span><font style="color: red;">*</font></span>
						 		</td>
						 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;">
						 			<input type="text" name="userDisplayName" class="TXT_CAP" style="width: 250px;padding: 4px;">
						 		</td>
						 		<td align="center" style="padding: 5px; background-color: white;" valign="top">
						 			<a href="#" class="LINK">Upload Logo</a>
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Address<span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;">
						 			<input type="text" name="userAddress" class="TXT_CAP" style="width: 250px;padding: 4px;"></br>
						 			<input type="text" name="userAddress" class="TXT_CAP" style="width: 250px;padding: 4px;"></br>
						 			<input type="text" name="userAddress" class="TXT_CAP" style="width: 250px;padding: 4px;">
						 		</td>
						 		<td align="center" style="padding: 5px; background-color: white;" valign="top">
						 			<img src="images/logon.jpg" width="60%" height="100%">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Print Name <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="printName" class="TXT_CAP" style="width: 250px;padding: 4px;">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Contact Person <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="contactPerson" class="TXT_CAP" style="width: 250px;padding: 4px;">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Phone <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="userPhone" class="TXT_CAP" style="width: 250px;padding: 4px;">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Email 
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="userEmail" class="TXT_CAP" style="width: 250px;padding: 4px;text-transform: lowercase;">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Website 
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="website" class="TXT_CAP" style="width: 250px;padding: 4px;text-transform: lowercase;">
						 		</td>
						 	</tr>
						</table>  <%-- End of Entry Table --%>
					</td>
					  <td width="2%">
					  	&nbsp;
					  </td>			
	  				<td width="45%" align="left" valign="top">
						 <table border="0" cellspacing="1" cellpadding="0" width="100%" align="left" style="border:1px solid black;">
						 	<tr valign="top">
						 		<td width="100%" class="TD_HEADER_BAND" align="left" style="padding: 5px" colspan="4">
						 			Licence Information
						 		</td>
						 	</tr>
						 	<tr>
						 		<td width="15%" class="TD_LBL" align="left" style="padding: 5px;">
						 			TIN No <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="tinNo" class="TXT_CAP" style="width: 150px;padding: 4px;">
						 			<span><font style="color: red; font-family: Verdana, Geneva, ms sans serif; font-size: 10px;">
						 				Valid through *
						 			</font></span>
						 			<input type="text" name="tinValid" class="TXT_CAP" style="width: 80px;padding: 4px;"> 
						 			<img src="images/calendar.gif" width="5%" height="80%">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			D/L No <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="dlNo" class="TXT_CAP" style="width:150px;padding: 4px;">
						 			<span><font style="color: red; font-family: Verdana, Geneva, ms sans serif; font-size: 10px;">
						 				Valid through *
						 			</font></span>
						 			<input type="text" name="tinValid" class="TXT_CAP" style="width: 80px;padding: 4px;"> 
						 			<img src="images/calendar.gif" width="5%" height="80%">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			CST No <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="cstNo" class="TXT_CAP" style="width: 150px;padding: 4px;">
						 			<span><font style="color: red; font-family: Verdana, Geneva, ms sans serif; font-size: 10px;">
						 				Valid through *
						 			</font></span>
						 			<input type="text" name="tinValid" class="TXT_CAP" style="width: 80px;padding: 4px;"> 
						 			<img src="images/calendar.gif" width="5%" height="80%">
						 		</td>
						 	</tr> 						 
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Fin Year <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="fyStartDate" class="TXT_CAP" style="width: 85px;padding: 4px;"> 
						 			<img src="images/calendar.gif" width="5%" height="80%">
						 			-
						 			<input type="text" name="fyEndDate" class="TXT_CAP" style="width: 85px;padding: 4px;"> 
						 			<img src="images/calendar.gif" width="5%" height="80%">
						 			
						 		</td>
						 	</tr> 						 
						</table>	
					  </td>	
					  <td>
					  	&nbsp;
					  </td>			
					</tr>
					<tr style="line-height:10px;">
						<td>&nbsp;</td>
					</tr>	
		  			<tr>
		  				<td colspan="4">
							 <table border="0" cellspacing="1" cellpadding="5" width="40%" align="left">
				  				<tr>
				  					<td>
							   			<input type="button" value="Save" class="BTN" style="width: 70px; padding: 5px;" onclick="addNew();">
							   			<input type="button" value="Reset" class="BTN" style="width: 70px; padding: 5px;">
							   			<input type="button" value="Back" class="BTN" style="width: 70px; padding: 5px;" onclick="history.back();">
				   					</td>
				   				</tr>
				   			</table>
				   		</td>
				   	</tr>
			</table> 	<%-- Outer Table --%> 			
		</form>
	</body>
</html>