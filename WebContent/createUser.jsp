<html>
	<head>
		<title></title>
		<link href="css/style.css" rel="stylesheet" media="screen"/>
		<script  type="text/javascript">
			function addNew(){
 				document.userForm.action = "createUser.jsp";
 				document.userForm.target="main";
 				document.userForm.submit();
			}
			$(document).ready(function(){
				 $('input').keyup(function(e){
				  if(e.which==39)
				   $(this).closest('td').next().find('input').focus();
				  else if(e.which==37)
				   $(this).closest('td').prev().find('input').focus();
				  else if(e.which==40)
				   $(this).closest('tr').next().find('td:eq('+$(this).closest('td').index()+')').find('input').focus();
				  else if(e.which==38)
				   $(this).closest('tr').prev().find('td:eq('+$(this).closest('td').index()+')').find('input').focus();
				 });
				});
			
			</script>
	</head>
	<body bgcolor="#FFF8DC">
  		<form name="userForm" action="">
  		<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
  			<tr>
  				<td>
					 <table border="0" cellspacing="0" cellpadding="5" width="100%" align="center">
					 	<tr valign="top">
					 		<td width="50%" class="TD_HEADER_BAND" align="left" style="padding: 5px">
					 			Add New User
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
						 <table border="0" cellspacing="1" cellpadding="0" width="50%" align="left" style="border:1px solid black;">
						 	<tr valign="top">
						 		<td width="100%" class="TD_HEADER_BAND" align="left" style="padding: 5px" colspan="4">
						 			Personal Information
						 		</td>
						 	</tr>
						 	<tr>
						 		<td width="15%" class="TD_LBL" align="left" style="padding: 5px;">
						 			Name<span><font style="color: red;">*</font></span>
						 		</td>
						 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;">
						 			<input type="text" name="userDisplayName" class="TXT_CAP" style="width: 250px;padding: 4px;">
						 		</td>
						 		<td align="center" style="padding: 5px; background-color: white;" valign="top">
						 			<a href="#" class="LINK">Upload Photo</a>
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
						 			Dob <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="userDob" class="TXT_CAP" style="width: 220px;padding: 4px;">
						 			<img src="images/calendar.gif" width="5%" height="80%">
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
						 			Email <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="userEmail" class="TXT_CAP" style="width: 250px;padding: 4px;">
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="100%" class="TD_HEADER_BAND" align="left" style="padding: 5px" colspan="4">
						 			ePharmacy Login Information
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			User Type <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<select name="userTpe" class="DDL" style="width: 250px;">
										<option value="">--Select One--</option>
						 				<option value="U">Super Suer</option>
						 				<option value="A">Administrator</option>
						 				<option value="D">Data Entry Operator</option>
						 				<option value="S">Sales User</option>
						 			</select>
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			User Id <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="userName" class="TXT_CAP" style="width: 250px;padding: 4px;">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Password <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="" align="left" style="padding: 5px; background-color: white;" colspan="2">
						 			<input type="text" name="userPassword" class="TXT_CAP" style="width: 250px;padding: 4px;">
						 		</td>
						 	</tr>
						</table>  <%-- End of Entry Table --%>
					</td>
					</tr>
					<tr style="line-height:10px;">
						<td>&nbsp;</td>
					</tr>	
		  			<tr>
		  				<td>
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