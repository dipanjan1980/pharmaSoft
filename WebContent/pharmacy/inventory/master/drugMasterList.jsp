<html>
	<head>
		<link rel="stylesheet" type="text/css" href="../../css/style.css">
		<link rel="stylesheet" type="text/css" href="../../css/demo.css">
		<link href="../../css/easyui.css"  rel="stylesheet" media="screen"/>
		<link href="../../common/icon.css" rel="stylesheet" media="screen"/>
		<script type="text/javascript" src="../../js/jquery.min.js"></script>
		<script type="text/javascript" src="../../js/jquery.easyui.min.js"></script>
		<script type="text/javascript">
			function addNew(){
 				document.drugForm.action = "addNewDrug.jsp";
 				document.drugForm.target="content";
 				document.drugForm.submit();
			}
		</script>
	</head>
	<body class="easy-layout">
		<form name="drugForm"  action="">
  		<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center" style="border: 3px inset green;">
  			<tr>
  				<td>
					 <table border="0" cellspacing="0" cellpadding="5" width="100%" align="center">
					 	<tr valign="top">
					 		<td width="50%" class="TD_HEADER_BAND" align="left" style="padding: 5px; height: 40px;font-size: 15px;text-align: center; vertical-align: middle;">
					 			Medicine Master
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
									<input type="button" class="BTN" value="Add New (ctrl + N)" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 120px; height: 30px; color: blue;" onclick="addNew();">
									<input type="button" class="BTN" value="Delete (ctrl + D)" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 120px; height: 30px; color: blue;">
									<input type="button" class="BTN" value="Print (ctrl + P)" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 120px; height: 30px; color: blue;">
									<input type="button" class="BTN" value="Export (ctrl + E)" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 120px; height: 30px; color: blue;">
						   		</td>
						 	</tr>
							<tr style="line-height:5px;">
								<td>&nbsp;</td>
							</tr>	
						 	<tr>
						 		<td width="20%" class="TD_LBL" align="left" style="font-size: 14px;">
						 			Search By Generic
						 		</td>
						 		<td width="5%" class="TD_LBL" align="center">
						 			:
						 		</td>
						 		<td class="" align="left">
						 			<input class="easyui-textbox" data-options="buttonText:'SEARCH',prompt:'Search By Code....'" style="width:250px;height:32px;">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="font-size: 14px;">
						 			Search By Drug Name
						 		</td>
						 		<td class="TD_LBL" align="center">
						 			:
						 		</td>
						 		<td class="" align="left">
						 			<input class="easyui-textbox" data-options="buttonText:'SEARCH',prompt:'Search By Name...'" style="width:250px;height:32px;">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="font-size: 14px;">
						 			Search By Mfr
						 		</td>
						 		<td class="TD_LBL" align="center">
						 			:
						 		</td>
						 		<td class="" align="left">
						 			<input class="easyui-textbox" data-options="buttonText:'SEARCH',prompt:'Search By Mfr...'" style="width:250px;height:32px;">
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
									<select class="DDL" style="width:50px;">
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
						 			Sl#
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