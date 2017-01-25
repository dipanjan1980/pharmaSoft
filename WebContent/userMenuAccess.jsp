<html>
	<head>
		<title></title>
		<link href="css/sms.css" rel="stylesheet" media="screen"/>
		<script type="text/javascript">
			function addNew(){
 				document.userForm.action = "createMenu.jsp";
 				document.userForm.target="main";
 				document.userForm.submit();
			}
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
					 			User Menu Access
					 		</td>
					 	</tr>
					</table>  
				</td>
				</tr>
				<tr style="line-height:10px;">
					<td>&nbsp;</td>
				</tr>	
				<%-- Search Table --%>
				<tr>
					<td>		
						 <table width="50%" border="0" cellspacing="1" cellpadding="0" align="left" class="TBL_SEARCH">
						 	<tr>
						 		<td width="20%" class="TD_LBL" width="20%" align="left" align="left">
						 			Select Menu 
							 		<td width="5%" class="TD_LBL" align="center">
							 			:
							 		</td>
						 			<td class="" align="left">
							 			<select name="menuList" class="DDL" style="width: 300px;">
							 				<option value="ALL">All Menu</option>
							 				<option value="A">Administration</option>						 				
							 				<option value="M">Master</option>
							 				<option value="T">Transaction</option>
							 				<option value="R">Reports</option>
							 				<option value="U">Utility</option>
							 			</select>
						 			</td>
						 	</tr>
						 	<tr>
						 		<td width="20%" class="TD_LBL" align="left">
						 			Search User
						 		</td>
						 		<td width="5%" class="TD_LBL" align="center">
						 			:
						 		</td>
						 		<td class="" align="left">
						 			<input type="text" name="searchUser" class="TXT_CAP" style="width: 100px;">
						 			<select name="userList" class="DDL" style="width: 200px;">
						 				<option value="">--Select--</option>
						 				<option value="1">DIPANJAN DE BHAUMIK</option>						 				
						 				<option value="2">CHINMOY PAL</option>
						 				<option value="3">GOPAL GARAIN</option>
						 				<option value="4">SANDIP BHADRA</option>
						 				<option value="5">JOY BHATTACHARYA</option>
						 			</select>
						 			<input type="button" value="SEARCH" class="BTN" style="width: 70px;">
						 		</td>
						 	</tr>
						</table>	<%-- End of Search Table --%>	
				 	</td>
			   	</tr>
				<tr style="line-height:10px;">
					<td>&nbsp;</td>
				</tr>	
			   	<tr>
			   		<td style="background-color:#008080;" align="right">
			   			<input type="button" value="ASSIGN" class="BTN" style="width: 70px;padding: 5px;" onclick="addNew();">
			   		</td>
			   	</tr>
				<tr style="line-height:10px;">
					<td>&nbsp;</td>
				</tr>	
	  			<tr>
	  				<td>
						 <table border="0" cellspacing="0" cellpadding="5" width="100%" align="center">
							<tr>
								<td style="color: blue; font-size: 12px; font-family: Courier;">
									No of Records Found : 10
								</td>
								<td style="color: blue; font-size: 12px; font-family: Courier;" align="right">
									<a href="#">Prev</a> || <a href="#">Next</a>
									Go To 
									<select class="DDL">
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
						 <table border="0" cellspacing="0" cellpadding="0" width="40%" align="center" style="border: 1px;">
						 	<tr>
						 		<td width="100%" class="DATAGRID_HDR" align="center" colspan="7" style="background-color: #FFEBCD;padding: 5px; color: blue;">
						 			TRANSACTION
						 		</td>
							</tr>
						 	<tr>
						 		<td width="5%" class="DATAGRID_HDR" align="center">
						 			&nbsp;
						 		</td>
						 		<td width="5%" class="DATAGRID_HDR" align="center">
						 			Sl#
						 		</td>
						 		<td width="30%" class="DATAGRID_HDR" align="center">
						 			Menu Name
						 		</td>
						 	</tr>
						 	<% for(int i = 1; i <= 10; i++ ){ %>
						 	 <tr>
						 	 	<td class="DATAGRID_ROW" align="center">
						 	 		<input type="checkbox" />
						 	 	</td>
						 	 	<td class="DATAGRID_ROW" align="center">
						 	 		<%=i%>
						 	 	</td>
						 	 	<td class="DATAGRID_ROW" align="center">
						 	 		Create User
						 	 	</td>
						 	 </tr>
						 	 <%} %>
						</table>  						
					</td>
			</table> <%-- Outer Table --%> 			
		</form>
	</body>
</html>