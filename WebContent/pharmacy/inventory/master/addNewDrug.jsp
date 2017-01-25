<html>
	<head>
		<link rel="stylesheet" type="text/css" href="../../css/style.css">
		<link rel="stylesheet" type="text/css" href="../../css/demo.css">
		<link href="../../css/easyui.css"  rel="stylesheet" media="screen"/>
		<link href="../../common/icon.css" rel="stylesheet" media="screen"/>
		<style>
		 input[type=text]:focus, textarea:focus, select:focus
		 {
    		background-color: #FFFFC2;
		 }
		</style>
		<script type="text/javascript" src="../../js/jquery.min.js"></script>
		<script type="text/javascript" src="../../js/jquery.easyui.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){
				  $("input").not( $(":button") ).keypress(function (evt) {
				  if (evt.keyCode == 13) 
				  {
				  	iname = $(this).val();
				  	if (iname !== 'Submit')
				  	{
					  var fields = $(this).parents('form:eq(0),body').find('button, input, textarea, select');
					  var index = fields.index( this );
					  if ( index > -1) 
					  {
				  		fields.eq( index + 1 ).focus();
				  	  }
				  		return false;
				    }
				 }
				});
		     });
		</script>
	</head>
	<body class="easy-layout">
  		<form name="drugForm" action="">
  		<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center" style="border: 3px inset green;">
  			<tr valign="top">
  				<td width="100%" colspan="3">
				 <table border="0" cellspacing="1" cellpadding="5" width="100%" align="left" style="border:1px solid #E0ECFF;">
					 	<tr valign="top">
					 		<td width="100%" class="TD_HEADER_BAND" align="left" style="padding: 5px; height: 40px;font-size: 15px;text-align: center; vertical-align: middle;" colspan="3">
					 			Add New Brand [Medicine]
					 		</td>
					 	</tr>
					</table>  
				</td>
				</tr>
	  			<tr>
	  				<td width="60%">
						 <table border="0" cellspacing="" cellpadding="0" width="100%" align="left" style="border:0px solid black;">
						 	<tr valign="top">
						 		<td width="100%" class="TD_HEADER_BAND" align="left" colspan="6" style="padding: 5px;">
						 			Brand General Information
						 		</td>
						 	</tr>
						 	<tr>
						 		<td width="15%" class="TD_LBL" align="left" style="padding: 5px;">
						 			Item Type <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; colspan="4">
									<input type="text" name="itemType" class="TXT_MANDATE" style="width: 350px;height:32px">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Generic<span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; colspan="4">
									<input type="text" name="generic" class="TXT_MANDATE" style="width: 350px;height:32px">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Manufacturer<span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; colspan="4">
									<input type="text" name="mfr" class="TXT_MANDATE" style="width: 350px;height:32px">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Brand Code <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; colspan="4">
						 			<input type="text" name="itemCode" class="TXT_MANDATE" style="width: 100px;height:32px">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Brand Name <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; colspan="4">
						 			<input type="text" name="itemName" class="TXT_MANDATE" style="width: 350px;height:32px">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Brand Desc <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; colspan="4">
						 			<input type="text" name="itemDesc" class="TXT_MANDATE" style="width: 350px;height:32px">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td class="TD_LBL" align="left" style="padding: 5px;">
						 			Print Name <span><font style="color: red;">*</font></span>
						 		</td>
						 		<td class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td class="TD_LBL" align="left" style="padding: 5px; colspan="4">
						 			<input type="text" name="itemPrintName" class="TXT_MANDATE" style="width: 350px;height:32px">
						 		</td>
						 	</tr>
						 	<tr valign="top">
						 		<td width="100%" class="TD_HEADER_BAND" align="left" style="padding: 5px;" colspan="6">
						 			Brand Packing Information
						 		</td>
						 	</tr>
						 	<tr>
						 		<td colspan="6">
							  		<table border="0" cellspacing="0" cellpadding="0" width="100%" align="center">
							 			<tr>
									 		<td class="TD_LBL" align="left" style="padding: 5px;">
									 			Brand Form <span><font style="color: red;">*</font></span>
									 		</td>
									 		<td class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px; background-color: white;" colspan="2">
									 			<select name="userTpe" class="DDL" style="width: 110px;">
													<option value="">--Select One--</option>
									 				<option value="U">Tablet</option>
									 				<option value="A">Capsule</option>
									 				<option value="D">Syrup</option>
									 				<option value="S">Injection</option>
									 				<option value="S">Gel</option>
									 				<option value="S">Powder</option>
									 				<option value="S">Spray</option>
									 				<option value="S">Ointment</option>
									 			</select>
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px;">
									 			Pack Type<span><font style="color: red;">*</font></span>
									 		</td>
									 		<td class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px; background-color: white;" colspan="2">
									 			<select name="userTpe" class="DDL" style="width: 110px;">
													<option value="">--Select One--</option>
									 				<option value="U">Tube</option>
									 				<option value="A">Strip</option>
									 				<option value="D">Bottle</option>
									 				<option value="S">Ampule</option>
									 				<option value="S">Pouch</option>
									 			</select>
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px;">
									 			Unit<span><font style="color: red;">*</font></span>
									 		</td>
									 		<td class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px; background-color: white;" colspan="2">
									 			<select name="userTpe" class="DDL" style="width: 110px;">
													<option value="">--Select One--</option>
									 				<option value="U">Box</option>
									 				<option value="A">Strip</option>
									 				<option value="D">Bot</option>
									 				<option value="S">Amp</option>
									 				<option value="S">Pcs</option>
									 			</select>
									 		</td>
									 	</tr>
									 	<tr>
									 		<td class="TD_LBL" align="left" style="padding: 5px;">
									 			Pack Qty<span><font style="color: red;">*</font></span>
									 		</td>
									 		<td class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px; background-color: white;" colspan="2">
									 			<select name="userTpe" class="DDL" style="width: 110px;">
													<option value="">--Select One--</option>
									 				<option value="U">1</option>
									 				<option value="A">2</option>
									 				<option value="D">3</option>
									 				<option value="S">4</option>
									 				<option value="S">5</option>
									 				<option value="S">5</option>
									 				<option value="S">5</option>
									 				<option value="S">5</option>
									 				<option value="S">5</option>
									 				<option value="S">5</option>
									 			</select>
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px;">
									 			Bunch Qty<span><font style="color: red;">*</font></span>
									 		</td>
									 		<td class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px; background-color: white;" colspan="2">
									 			<select name="userTpe" class="DDL" style="width: 110px;">
													<option value="">--Select One--</option>
									 				<option value="U">1</option>
									 				<option value="A">2</option>
									 				<option value="D">3</option>
									 				<option value="S">4</option>
									 				<option value="S">5</option>
									 				<option value="S">5</option>
									 				<option value="S">5</option>
									 				<option value="S">5</option>
									 				<option value="S">5</option>
									 				<option value="S">5</option>
									 			</select>
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px;">
									 			Sch Drug<span><font style="color: red;">*</font></span>
									 		</td>
									 		<td class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px; background-color: white;" colspan="2">
									 			<select name="userTpe" class="DDL" style="width: 110px;">
													<option value="">--Select One--</option>
									 				<option value="Y">Y</option>
									 				<option value="N">N</option>
									 			</select>
									 		</td>
									 	</tr>
									 	<tr>
									 		<td class="TD_LBL" align="left" style="padding: 5px;">
									 			Loose Sale<span><font style="color: red;">*</font></span>
									 		</td>
									 		<td class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px; background-color: white;" colspan="2">
									 			<select name="userTpe" class="DDL" style="width: 110px;">
													<option value="">--Select One--</option>
									 				<option value="Y">Y</option>
									 				<option value="N">N</option>
									 			</select>
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px;">
									 			Rx Reqd<span><font style="color: red;">*</font></span>
									 		</td>
									 		<td class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td class="TD_LBL" align="left" style="padding: 5px; background-color: white;" colspan="5">
									 			<select name="userTpe" class="DDL" style="width: 110px;">
													<option value="">--Select One--</option>
									 				<option value="Y">Y</option>
									 				<option value="N">N</option>
									 			</select>
									 		</td>
							 			</tr>
							 			<tr style="LINE_HEIGHT:10px;">
							 				<td>
							 					&nbsp;
							 				</td>
							 			</tr>
							  		</table>
							  	</td>
							 </tr>
						</table>  <%-- End of Entry Table --%>
					</td>
					<td width="5%">
						&nbsp;
					</td>
	  				<td valign="top" align="left" colspan="3">
						 <table border="0" cellspacing="1" cellpadding="0" width="100%" align="left" style="border:0px solid black;">
						 	<tr valign="top">
						 		<td width="100%" class="TD_HEADER_BAND" align="left" style="padding: 5px" colspan="4">
						 			Alternative Brand(s)
						 		</td>
						 	</tr>
						 	<tr>
						 		<td width="10%" class="TD_LBL" align="left" style="padding: 5px;">
						 			Brand
						 		</td>
						 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px;">
						 			:
						 		</td>
						 		<td align="left" style="padding: 5px; background-color: white;">
						 			<input class="TXT_MANDATE" style="width:350px;height:32px;">
						 		</td>
						 	</tr>
						 	<tr>
						 		<td colspan="4">
						 			<div style="overflow: scroll; height: 120; outline-style: none; ">
									<table border="0" cellspacing="1" cellpadding="0" width="100%" align="left" style="border:0px solid black;background-color: black;">
										<tr>
											<td width="5%" class="DATAGRID_HDR" align="center">
												SL#
											</td>
											<td width="55%" class="DATAGRID_HDR" align="center">
												Brand
											</td>
											<td class="DATAGRID_HDR" align="center">
												Company
											</td>
										</tr>
									 	<% for(int i = 1; i <= 10; i++ ){ %>
									 	 <tr>
									 	 	<td class="DATAGRID_ROW" align="center">
									 	 		<%=i%>
									 	 	</td>
									 	 	<td class="DATAGRID_ROW" align="center">
									 	 		CALPOL 500MG TABS
									 	 	</td>
									 	 	<td class="DATAGRID_ROW" align="center">
									 	 		Cipla
									 	 	</td>
									 	 </tr>
									 	 <%} %>
									</table>
									</div>			 			
						 		</td>
						 	</tr>
						 	<tr style="LINE-HEIGHT:10px;">
						 		<td>&nbsp;</td>
						 	</tr>
							<tr>
				  				<td valign="top" align="left" colspan="6">
									 <table border="0" cellspacing="1" cellpadding="0" width="100%" align="left" style="border:0px solid black;background-color: black;">
									 	<tr valign="top">
									 		<td width="100%" class="TD_HEADER_BAND" align="left" style="padding: 5px" colspan="6">
									 			Reorder Level
									 		</td>
									 	</tr>
									 	<tr>
									 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px;">
									 			Min Stock
									 		</td>
									 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td width="10%" align="left" style="padding: 5px; background-color: white;">
												<input type="text" name="mfgSearch" class="TXT_CAP" style="width: 60px;padding: 5px;text-align: right;">
											</td>						 		
									 		<td width="20%" class="TD_LBL" align="left" style="padding: 5px;">
									 			Max Stock
									 		</td>
									 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td  align="left" style="padding: 5px; background-color: white;">
												<input type="text" name="mfgSearch" class="TXT_CAP" style="width: 60px;padding: 5px;text-align: right;">
											</td>						 		
									 	</tr>
									 	<tr>
									 		<td class="TD_LBL" align="left" style="padding: 5px;">
									 			Critical Level
									 		</td>
									 		<td class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td align="left" style="padding: 5px; background-color: white;">
												<input type="text" name="mfgSearch" class="TXT_CAP" style="width: 60px;padding: 5px;text-align: right;">
											</td>						 		
									 		<td class="TD_LBL" align="left" style="padding: 5px;">
									 			Reorder Level
									 		</td>
									 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td  align="left" style="padding: 5px; background-color: white;">
												<input type="text" name="mfgSearch" class="TXT_CAP" style="width: 60px;padding: 5px;text-align: right;">
											</td>						 		
									 	</tr>
									</table>
								</td>							
							</tr>
						 	<tr style="LINE-HEIGHT:24px;">
						 		<td>&nbsp;</td>
						 	</tr>
						 </table>
							<tr>
				  				<td valign="top" align="left" colspan="4">
									 <table border="0" cellspacing="1" cellpadding="0" width="100%" align="left" style="border:0px solid black;">
									 	<tr valign="top">
									 		<td width="100%" class="TD_HEADER_BAND" align="left" style="padding: 5px" colspan="4">
									 			Comments
									 		</td>
									 	</tr>
									 	<tr>
									 		<td width="10%" class="TD_LBL" align="left" style="padding: 5px;">
									 			Composition
									 		</td>
									 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td align="left" style="padding: 5px; background-color: white;">
												<textarea rows="5" cols="60" class="TXT_CAP"></textarea>
											</td>						 		
									 	</tr>
									 	<tr>
									 		<td width="10%" class="TD_LBL" align="left" style="padding: 5px;">
									 			Remarks
									 		</td>
									 		<td width="5%" class="TD_LBL" align="center" style="padding: 5px;">
									 			:
									 		</td>
									 		<td align="left" style="padding: 5px; background-color: white;">
												<textarea rows="5" cols="60" class="TXT_CAP"></textarea>
											</td>						 		
									 	</tr>
									 </table>
								</td>
						</tr>
						<tr style="line-height:10px;">
							<td>&nbsp;</td>
						</tr>							
				</table> 	<%-- Outer Table --%>
	  			<tr>
	  				<td align="left">
						 <table border="0" cellspacing="1" cellpadding="6" width="40%" align="left">
			  				<tr>
			  					<td>
									<input type="button" class="BTN" value="Save (F10)" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 90px; height: 30px; color: blue;" onclick="alert1();">
									<input type="button" class="BTN" value="Reset" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 90px; height: 30px; color: blue;">
									<input type="button" class="BTN" value="Back (Esc)" style="background:url('../../images/banner_bg.jpg') no-repeat left center; width: 90px; height: 30px; color: blue;">
			   					</td>
			   				</tr>
			   			</table>
			   		</td>
			   	</tr>
		</form>
	</body>
</html>