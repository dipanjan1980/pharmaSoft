<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<title>
	genericFinder
</title>
	<spring:url value="/resources/css/style.css" var="styleCss"/>
	<link href="${styleCss}" rel="stylesheet"/>
	<spring:url value="/resources/js/hms.js" var="hmsJs"/>  
	<script type="text/javascript" src="${hmsJs}"></script>	
	
	<spring:url value="/resources/css/tableCss.css" var="tblCss"/>
	<link href="${tblCss}" rel="stylesheet"/>
	
	<spring:url value="/resources/js/tableJs.js" var="tblJs"/>  
	<script type="text/javascript" src="${tblJs}"></script>	
	
	<spring:url value="/resources/js/jquery-1.3.2.min.js" var="jquery-table"/>  
	<script type="text/javascript" src="${jquery-table}"></script>	

	<script type="text/javascript">
		function search()
		{
			document.genericFinderForm.action = "${pageContext.request.contextPath}/genericFinder/searchGeneric.html";
			document.genericFinderForm.method = "GET";
			document.genericFinderForm.submit();				
		}
		
		function getSelected()
		{
			document.genericFinderForm.action = "${pageContext.request.contextPath}/genericFinder/getSelected.html";
			document.genericFinderForm.method = "GET";
			document.genericFinderForm.submit();	
		}
		
		function selectGenerics()
		{
			var code ="";
			var name = "";
			for (var i = 0; i < document.genericFinderForm.genericName.options.length; i++)
			{
				var tmp = document.genericFinderForm.genericName.options[i].value.split(":");
				code = code.concat(tmp[0],",");
				name = name.concat(tmp[1],",");
			}
			
			window.opener.document.getElementById("param1").value = code.substring(0, code.lastIndexOf(",") -1 );
			window.opener.document.getElementById("genName").innerHTML = name.substring(0, name.lastIndexOf(",") -1 );
			window.close();
		}
	</script>
	<style type="text/css">
	/* Scrollable Table  CSS */
	
	/* http://www.tagindex.net/color/scroll/index.html - html color */
	body {
		background: #FFF;
		color: #000;
		font: normal normal 12px Verdana, Geneva, Arial, Helvetica, sans-serif;
		margin: 10px;
		padding: 0;
		scrollbar-base-color: #C0C0C0;
		scrollbar-base-color: #C0C0C0;
		scrollbar-3dlight-color: #C0C0C0;
		scrollbar-highlight-color: #C0C0C0;
		scrollbar-track-color: #EBEBEB;
		scrollbar-arrow-color: black;
		scrollbar-shadow-color: #C0C0C0;
		scrollbar-dark-shadow-color: #C0C0C0;
	}	
</style>	
</head>
<body style="background-color: #FFF8DC">
   <form:form name="genericFinderForm" action="" method="get" modelAttribute="medicineGeneric">  
	  <table cellspacing="0" cellpadding="0" width="90%" align="left" style="">
		<tr>
			<td colspan="17" align="center">
				 <table border="0" cellspacing="0" cellpadding="2" width="100%" align="center">
				 	<tr valign="top">
				 		<td width="100%" class="Footer" colspan="3" align="center" style="padding: 5px; height: 10px;font-size: 15px;text-align: center; vertical-align: middle;">
				 			 Generic Finder
						</td>
				 	</tr>
				</table>    
			</td>
		</tr>
		<tr style="line-height:10px;">
			<td>&nbsp;</td>
		</tr>	
		<tr>
			<td colspan="17">
				 <table border="0" cellspacing="0" cellpadding="2" width="100%" align="left">
				 	<tr valign="top">
				 		<td width="100%" class="" colspan="3" align="left" style="padding: 5px; height: 10px;font-size: 12px;text-align: left; vertical-align: middle;">
				 			<span style="font-weight:bold;"> 
				 			 Search :
				 			</span>
							&nbsp;&nbsp;&nbsp;
							<input type="text" name="searchKey" class="field1" style="width: 200px;"/>
							<input type = "button" value="Go" style="background: #DCEDEA url(../../resources/images/search.png); height:25px; width: 50px; padding-left:20px; background-repeat: no-repeat; background-position: left;" onclick="search();"/>										
						</td>
				 	</tr>
				</table>    
			</td>
		</tr>
		<tr style="line-height:10px;">
			<td>&nbsp;</td>
		</tr>	
		<tr>
			<td align="left">		
				<form:select id="left" path="genericID" multiple="multiple" cssStyle="font-size:12px;background-color:#F0F8FF; border-width:2px; border-style: inset; height: 280px; width:300px; text-align: left; overflow: scroll;" onclick="check();">
	                <c:forEach var="genr" items="${genericsList}" varStatus="indx">
	                    <form:option value="${indx.count}"><c:out value="${genr.genericName.toString()}"/></form:option>
	                </c:forEach>
                </form:select>
			</td>	
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td  align="center" width="30%">
				<input type = "button" value=">>" style="background: #DCEDEA; height:30px; width: 35px;" onclick=""/>										
				</br></br>
				<input type = "button" value="<<" style="background: #DCEDEA; height:30px; width: 35px;" onclick=""/>										
				</br></br>
				<input type = "button" value=">" style="background: #DCEDEA; height:30px; width: 35px;" onclick="getSelected();"/>										
				</br></br>
				<input type = "button" value="<" style="background: #DCEDEA; height:30px; width: 35px;" onclick=""/>										
				</br>			
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td align="right">
				<form:select path="genericName"  multiple="multiple" cssStyle="font-size:12px;background-color:#F0F8FF; border-width:2px; border-style: inset; height: 280px; width:300px; text-align: left; overflow: scroll;">
	                <c:forEach var="genr1" items="${selectedGenericsList}" varStatus="indx">
	                    <form:option value="${genr1.genericID.toString()} : ${genr1.genericName.toString()}">
	                    	<c:out value="${genr1.genericName.toString()}"/>
	                    </form:option>
	                </c:forEach>
                </form:select>
			</td>
		</tr>
		<tr style="line-height:30px;">
			<td>&nbsp;</td>
		</tr>	
		<tr>
			<td align="left"><span id="select" class=""> You have selected : </span></td>
		</tr>	
		<tr style="line-height:30px;">
			<td>&nbsp;</td>
		</tr>	
         <tr>
         	<td colspan="17" bgcolor="" style="height:20px;" align="left">
	           <table cellspacing="0" cellpadding="0" width="100%"  style="">
		         <tr>
			 		<td width="100%" class="" align="left" >
						 <input type = "button" value="Clear" style="background: #DCDFFA url(../../resources/images/add_new.png); height:30px; width: 75px; background-repeat: no-repeat; background-position: left;"/>										
						 <input type = "button" value=" Select" style="background: #DCDFFA url(../../resources/images/run.png); height:30px; width: 75px; background-repeat: no-repeat; background-position: left;" onclick="selectGenerics();" />										
						 <input type = "button" value="   Close" style="background: #DCDFFA url(../../resources/images/close.gif); height:30px; width: 75px; background-repeat: no-repeat; background-position: left;" onclick="window.close();" />										
			 		</td>
				</tr>					
				</table>
			</td>
		</tr>																
	</table>	
</form:form>
</body>
</html>