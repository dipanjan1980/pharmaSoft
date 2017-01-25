<html>
	<head>
		<title></title>
		<link href="css/sms.css" rel="stylesheet" media="screen"/>
		<script type="text/javascript">
			function addNew(){
 				document.userForm.action = "createMedicineGroup.jsp";
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
					 			Medicine Group Master
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
						 		<td width="20%" align="left" class="TD_LBL" align="left" colspan="3" style="background-color: #FFF8DC;">
									<input type="radio" name="statusType" value="1" checked="checked"/><font style="color: blue; font-weight: bold;">All</font>
									<input type="radio" name="statusType" value="A"/><font style="color: green; font-weight: bold;">Active</font>
									<input type="radio" name="statusType" value="I"/><font style="color: red; font-weight: bold;">In Active</font>
						 		</td>
						 	</tr>
							<tr style="line-height:5px;">
								<td>&nbsp;</td>
							</tr>	
						 	<tr>
						 		<td width="20%" class="TD_LBL" align="left">
						 			Search By Code
						 		</td>
						 		<td width="5%" class="TD_LBL" align="center">
						 			:
						 		</td>
						 		<td class="" align="left">
						 			<input type="text" class="TXT_CAP" style="width: 200px;">
						 			<input type="button" value="SEARCH" class="BTN" style="width: 70px;">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td width="20%" class="TD_LBL" align="left">
						 			Search By Name
						 		</td>
						 		<td width="5%" class="TD_LBL" align="center">
						 			:
						 		</td>
						 		<td class="" align="left">
						 			<input type="text" class="TXT_CAP" style="width: 200px;">
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
			   			<input type="button" value="ADD NEW" class="BTN" style="width: 70px;" onclick="addNew();">
			   			<input type="button" value="DELETE" class="BTN" style="width: 70px;">
			   			<input type="button" value="PRINT" class="BTN" style="width: 70px;">
			   			<input type="button" value="EXPORT" class="BTN" style="width: 70px;">
			   		</td>
			   	</tr>
				<tr style="line-height:10px;">
					<td>&nbsp;</td>
				</tr>	
	  			<tr>
	  				<td>
						 <table border="0" cellspacing="0" cellpadding="5" width="60%" align="left">
							<tr>
								<td style="color: blue; font-size: 12px; font-family: Courier;">
									No of Records Found : 20
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
						 <table border="0" cellspacing="0" cellpadding="0" width="60%" align="left" style="border: 1px;">
						 	<tr>
						 		<td width="5%" class="DATAGRID_HDR" align="center">
						 			&nbsp;
						 		</td>
						 		<td width="5%" class="DATAGRID_HDR" align="center">
						 			Sl#
						 		</td>
						 		<td width="50%" class="DATAGRID_HDR" align="center">
						 			Group Name
						 		</td>
						 		<td width="20%" class="DATAGRID_HDR" align="center">
						 			Status
						 		</td>
						 		<td class="DATAGRID_HDR" align="center">
						 			Action
						 		</td>
						 	</tr>
						 	<% for(int i = 1; i <= 20; i++ ){ %>
						 	 <tr>
						 	 	<td class="DATAGRID_ROW" align="center">
						 	 		<input type="checkbox" />
						 	 	</td>
						 	 	<td class="DATAGRID_ROW" align="center">
						 	 		<%=i%>
						 	 	</td>
						 	 	<td class="DATAGRID_ROW" align="center">
						 	 		PARACITAMOL [P001]
						 	 	</td>
						 	 	<td class="DATAGRID_ROW" align="center">
						 	 		<% if(i%2 == 0){ %>
						 	 			<font style="color: green; font-weight: bold;">Active</font>
									<% }else{ %>
						 	 			<font style="color: red; font-weight: bold;">In Active</font>		
						 	 		<%} %>													 	 			
						 	 	</td>
						 	 	<td class="DATAGRID_ROW" align="center">
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