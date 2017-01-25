<html>
	<head>
		<title></title>
		<link href="css/style.css" rel="stylesheet" media="screen"/>
		<script type="text/javascript">
			function addNew(){
 				document.userForm.action = "createMenu.jsp";
 				document.userForm.target="main";
 				document.userForm.submit();
			}
		</script>
	</head>
	<body bgcolor="">
  		<form name="userForm" action="">
	  		<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
	  			<tr valign="top">
	  				<td width="75%" style="background-color: scrollbar; " >
						 <table border="0" cellspacing="0" cellpadding="5" width="100%" align="center">
						 	<tr>
						 		<td width="15%" class="TD_LBL" align="left" style="padding: 5px; font-size: 12px; ">
						 			Search Medicine
						 		</td>
						 		<td width="2%" class="TD_LBL" align="left" style="padding: 5px;font-size: 12px;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px;" valign="top">
						 			<input type="text" name="itemSearch" class="TXT_CAP" style="width: 600px;padding: 10px; font-size: 12px;">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td colspan="3">
									 <table border="0" cellspacing="0" cellpadding="2" width="100%" align="center">
									 	<tr>
									 		<td width="30%" align="left" class="DATAGRID_HDR">
									 			Item
									 		</td>
									 		<td width="15%" align="left" class="DATAGRID_HDR">
									 			Batch
									 		</td>
									 		<td width="12%" align="left" class="DATAGRID_HDR">
									 			Exp.
									 		</td>
									 		<td width="12%" align="right" class="DATAGRID_HDR">
									 			MRP
									 		</td>
									 		<td width="10%" align="right" class="DATAGRID_HDR">
									 			Qty
									 		</td>
									 		<td width="12%" align="right" class="DATAGRID_HDR">
									 			Total
									 		</td>
									 		<td align="center" class="DATAGRID_HDR">
									 			&nbsp;
									 		</td>
									 	</tr>
									 	<tr>
									 		<td class="DATAGRID_POS" align="left">
									 			<input type="text" name="billNo" class="TXT_CAP" style="width: 220px;padding: 7px;font-size: 12px;">
									 		</td>
									 		<td class="DATAGRID_POS" align="left">
									 			<input type="text" name="billNo" class="TXT_CAP" style="width: 100px;padding: 7px; ">
									 		</td>
									 		<td class="DATAGRID_POS" align="left">
									 			<input type="text" name="billNo" class="TXT_CAP" style="width: 100px;padding: 7px; ">
									 		</td>
									 		<td class="DATAGRID_POS" align="right">
									 			<input type="text" name="billNo" class="TXT_CAP" style="width: 100px;padding: 7px; ">
									 		</td>
									 		<td class="DATAGRID_POS" align="right">
									 			<input type="text" name="billNo" class="TXT_CAP" style="width: 64px;padding: 7px; ">
									 		</td>
									 		<td class="DATAGRID_POS" align="right">
									 			<input type="text" name="billNo" class="TXT_CAP" style="width: 66px;padding: 7px; ">
									 		</td>
									 		<td class="DATAGRID_POS" align="left">
									 			<input type="button" class="BTN" value="Add" style="width: 50px; height:30px; padding: 7px;">
									 		</td>
									 	</tr>
									 </table>
						 		</td>
						 	</tr>
						</table>
			 		</td>
					<td>
						 <table border="0" cellspacing="0" cellpadding="5" width="100%" align="center">
						 	<tr valign="top">
						 		<td width="60%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			Bill No
						 		</td>
						 		<td width="2%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			<input type="text" name="billNo" class="TXT_CAP" style="width: 150px;padding: 4px; ">
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			Bill Dt
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			<input type="text" name="billNo" class="TXT_CAP" style="width: 150px;padding: 4px; ">
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			Type<span><font style="color: red;">*</font></span>
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			<select name="itemType" class="DDL" style="width: 150px;padding: 4px;">
						 				<option value="C">Cash</option>
						 				<option value="D">Credit Card</option>
						 				<option value="R">Credit</option>
						 			</select>
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			Membership No
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; border-bottom-style: solid;border-bottom-width: 1px;">
									<input type="text" name="billNo" class="TXT_CAP" style="width: 150px;padding: 4px; ">						 		
								</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			Member Name
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue; ">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px;border-bottom-style: solid;border-bottom-width: 1px;">
									DIPANJAN DE BHAUMIK						 		
								</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			Address
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px;border-bottom-style: solid;border-bottom-width: 1px;">
									87/31, BOSE PUKUR ROAD, KOLKATA-42						 		
								</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			PH No
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px;border-bottom-style: solid;border-bottom-width: 1px;">
									9830941781						 		
								</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			O/D Bal
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px;border-bottom-style: solid; border-bottom-width: 1px; ">
									2265.00						 		
								</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			Sub Total
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="right" style="padding: 5px;">
						 			<input type="text" name="billNo" value="945.00" class="TXT_CAP" style="width: 150px;padding: 4px; color: red; font-size: 15px; font-weight: bold; text-align: right;">
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			Cash Disc%
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			<input type="text" name="billNo" value="12.00" class="TXT_CAP" style="width: 150px;padding: 4px; color: green; font-size: 15px; font-weight: bold; text-align: right;">
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			Tax
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; background-color: skyblue;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; border-bottom-style: double;">
						 			<input type="text" name="billNo" value="56.65" class="TXT_CAP" style="width: 150px;padding: 4px; color: blue; font-size: 15px; font-weight: bold; text-align: right;">
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px;">
						 			Net Amt
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; ">
						 			<input type="text" name="billNo" value="1200.87" class="TXT_CAP" style="width: 150px;padding: 4px; color: red; font-size: 15px; font-weight: bold; text-align: right; ">
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px;">
						 			Round Off
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; border-bottom-style: double;">
						 			<input type="text" name="billNo" value=".87" class="TXT_CAP" style="width: 150px;padding: 4px; color: green; font-size: 15px; font-weight: bold; text-align: right;">
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px;">
						 			Tender Amt
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; ">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="right" valign="middle" style="padding: 5px; background-color: red; font-weight: bold; color: white; font-size: 15px;">
						 				1200.00
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px;">
						 			<input type="button" value="Cancel(F7)" class="BTN" style="width: 100px; height:45px; padding: 4px; background-color: green; color: white; font-size: 10px; font-weight: bold; text-align: center;">
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; ">
						 			<input type="button" value="Bill Edit(F8)" class="BTN" style="width: 100px; height:45px; padding: 4px; background-color: green; color: white; font-size: 10px; font-weight: bold; text-align: center;">
						 		</td>
						 		<td class="TD_LBL" align="left" valign="middle" style="padding: 5px;">
						 			<input type="button" value="Duplicate(F11)" class="BTN" style="width: 100px; height:45px; padding: 4px; background-color: green; color: white; font-size: 10px; font-weight: bold; text-align: center;">
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px;">
						 			<input type="button" value="Change Qty(F2)" class="BTN" style="width: 100px; height:45px; padding: 4px; background-color: green; color: white; font-size: 10px; font-weight: bold; text-align: center;">
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; ">
						 			<input type="button" value="Remove Item(F4)" class="BTN" style="width: 100px; height:45px; padding: 4px; background-color: green; color: white; font-size: 10px; font-weight: bold; text-align: center;">
						 		</td>
						 		<td class="TD_LBL" align="left" valign="middle" style="padding: 5px;">
						 			<input type="button" value="Duplicate(F11)" class="BTN" style="width: 100px; height:45px; padding: 4px; background-color: green; color: white; font-size: 10px; font-weight: bold; text-align: center;">
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="40%" class="TD_LBL" align="left" style="padding: 5px;">
						 			<input type="button" value="Save&Print(F10)" class="BTN" style="width: 100px; height:45px; padding: 4px; background-color: green; color: white; font-size: 10px; font-weight: bold; text-align: center;">
						 		</td>
						 		<td width="5%" class="TD_LBL" align="left" style="padding: 5px; ">
						 			<input type="button" value="Save(F12)" class="BTN" style="width: 100px; height:45px; padding: 4px; background-color: green; color: white; font-size: 10px; font-weight: bold; text-align: center;">
						 		</td>
						 		<td class="TD_LBL" align="left" valign="middle" style="padding: 5px;">
						 			<input type="button" value="Reorder(F6)" class="BTN" style="width: 100px; height:45px; padding: 4px; background-color: green; color: white; font-size: 10px; font-weight: bold; text-align: center;">
						 		</td>
						 	</tr>
						</table>  
					</td>
				</table> <%-- Outer Table --%> 			
		</form>
	</body>
</html>