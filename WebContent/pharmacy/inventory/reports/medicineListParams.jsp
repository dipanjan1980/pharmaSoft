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
		function changeReportType()
		{
			if(document.reportParamsForm.rptType.value ==  'D')
			{
				document.getElementById('g').style.display = 'table-row';
				document.getElementById('m').style.display = 'table-row';
				document.getElementById('t').style.display = 'table-row';
			}
			else{
				document.getElementById('g').style.display = 'none';
				document.getElementById('m').style.display = 'none';
				document.getElementById('t').style.display = 'none';				
			}
			
			document.getElementById('param1').value = '';
			document.getElementById('param2').value = '';
			document.getElementById('genName').innerHTML = '';
			document.getElementById('mfgName').innerHTML = '';
		}
		
		function runReport()
		{
			var flag = false;
			if(document.reportParamsForm.rptType.value ==  'S')
			{
				if(document.reportParamsForm.filter.value !=  '')
					flag = true;
			}	
			else if(document.reportParamsForm.rptType.value ==  'D')
			{
				if(document.reportParamsForm.genericCode.value !=  '' || document.reportParamsForm.mfgCode.value != '')
					flag = true;
			}
			
			if(flag){
				document.reportParamsForm.action = "${pageContext.request.contextPath}/pharma/inventory/invReport/generateMedicineList.html";
				document.reportParamsForm.method = "GET";
				document.reportParamsForm.submit();				
			}
			else{
				alert("Please select either Generic or Manufacturer !!!");
				return;
			}
		}

		</script>
		<style>
		 input[type=text]:focus, textarea:focus, select:focus
		 {
    		background-color: #AFEEEE;
		 }
		 
		.box    
		{ 
		font-family:Trebuchet MS,Arial,Helvetica,sans-serif; 
		font-size:12px;
		font-weight:bold;		
		color:blue; 
		background-color:#BFEFDF;
		height:30px;
		border-style: outset; 
		padding-left: 10px;
		}
		</style>
</head>
<body onFocus="parent_disable();" onclick="parent_disable();">
   <form:form name="reportParamsForm" action="" method="post" modelAttribute="reportParams">
		  <table cellspacing="0" cellpadding="0" width="60%" align="left" style="border-style: outset; background-color: FFFFE3;">
				<tr valign="top">
					<td colspan="3" valign="top" align="center" width="100%">
						 <table border="0" cellspacing="0" cellpadding="2" width="100%" align="center">
						 	<tr valign="top">
						 		<td width="100%" class="TD_HEADER_BAND" style="height: 35px; font-weight:bold; text-align: left;" colspan="3" align="center">
						 			Reports Parameter
						 			<a href="../../../GuiDemo.jnlp">Launch "Swing Counter Application"</a>
						 		</td>
						 	</tr>
						</table>  
					</td>
				</tr>
				<tr style="line-height:2px;">
					<td>&nbsp;</td>
				</tr>	
				<tr style="line-height:20px;">
					<td>&nbsp;</td>
				</tr>	
				<tr>
			 		<td width="15%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
			 			 Report Type :	 			 
			 		</td>
			        <td>
						<select name="rptType" class="box" style="background-color: #F2F3F4; width:150px;height:30px;font-size:12px; padding: 5px;  border-style:single; border-width: 1;" onchange="changeReportType();">
							<option value="S">Summary</option>					
							<option value="D">Detail</option>
						</select> 
					</br>
		 			<input type="radio" value="A" id="filter" name="filter" style="font-color:blue; border-style: outset;"><font class="TD_LBL" style="font-size: 12px;">Generic wise</font>
		 			<input type="radio" value="N" id="filter" name="filter" style="border-style: outset;"><font class="TD_LBL" style="font-size: 12px;">Mfg wise</font>
					</td>
		         </tr>
				<tr style="line-height:20px;">
					<td>&nbsp;</td>
				</tr>	
				<tr id="g" style="display: none ;">
			 		<td width="15%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
			 			 Generic :	 			 
			 		</td>
			        <td>
			          	<form:input id="param1" path="criteriaParam1" cssStyle="width:200px;" cssClass="box"/>
						<input type = "button" onclick="finderWindow('../../../genericFinder/loadGenericFinder.html','genericList',720,500);" style="background: #DCEDEA url(../../../resources/images/lov.gif); height:25px; width: 25px; background-repeat: no-repeat; background-position: center;"/>
						<span id="" class="Footer"> &nbsp;&nbsp;&nbsp;</span>
						<span id="genName" class="Footer" style="font-size: 10px"> </span>														
					</td>
		         </tr>
				<tr id="m" style="display: none;">
			 		<td width="15%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
			 			 Mfg :	 			 
			 		</td>
			        <td>
			          	<form:input id="param2" path="criteriaParam2" cssStyle="width:200px;" cssClass="box"/>
						<input type = "button" value="" style="background: #DCEDEA url(../../../resources/images/lov.gif); height:25px; width: 25px; background-repeat: no-repeat; background-position: center;"/>										
						<span id="" class="Footer"> &nbsp;&nbsp;&nbsp;</span>
						<span id="MfgName" class="Footer" style="font-size: 10px"> Glaxo Smithkine Becham </span>														
					</td>
		         </tr>
				<tr id="t" style="display: none;">
			 		<td width="15%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
			 			 Medicine Type :	 			 
			 		</td>
			        <td>
						<select class="box" style="background-color:white; width:150px;height:30px;font-size:12px; padding: 5px;  border-style: outset;">
							<option value="A">All</option>					
							<option value="S">Sch-X</option>					
							<option value="D">Narcotics</option>
							<option value="D">Sch-H</option>
						</select> 
					</td>
		         </tr>
				<tr style="line-height:20px;">
					<td>&nbsp;</td>
				</tr>	
				<tr>
			 		<td width="16%" class="TD_LBL" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
			 			 Media Type :	 			 
			 		</td>
			        <td>
						<select class="box" style="background-color:white; width:150px;height:30px;font-size:12px; padding: 5px;  text-transform: lowercase;">
							<option value="S">Screen</option>					
							<option value="E">Excel</option>
							<option value="P">Pdf</option>
							<option value="T">TextPad</option>
						</select> 
					</td>
		         </tr>
				<tr style="line-height:60px;">
					<td>&nbsp;</td>
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
					             	 Report
					             </td>
						 		<td width="15%" class="Footer" align="left" style="padding: 5px; height: 5px;text-align: left; vertical-align: top;">
						 			<b>Run Date :</b>
						 		</td>
						        <td class="Footer">
					             	 15/Oct/2016
					             </td>				 		
				           	</tr>
							<tr style="line-height: 10px;">
								<td>
									&nbsp;
								</td>
							</tr>
					         <tr>
						 		<td width="15%" class="Footer" align="left" style="padding: 5px; height: 5px;text-align: left; vertical-align: top;">
						 			<b>Run By  :</b>
						 		</td>
						        <td class="Footer">
					             	 ${model.user.userShortName}
					             </td>
						 		<td width="15%" class="Footer" align="left" style="padding: 5px; height: 5px;text-align: left; vertical-align: top;">
						 			<b>Title :</b>
						 		</td>
						        <td class="Footer">
					             	 Medicine List Report	
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
								 <input type = "button" value=" Run" style="background: #DCDFFA url(../../../resources/images/run.png); height:30px; width: 75px; background-repeat: no-repeat; background-position: left;" onclick="runReport();" />										
								 <input type = "button" value="   Close" style="background: #DCDFFA url(../../../resources/images/close.gif); height:30px; width: 75px; background-repeat: no-repeat; background-position: left;"/>										
					 		</td>
						</tr>					
						</table>
					</td>
				</tr>
		</table>
	</form:form>
</body>
</html>