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
	/* Scrollable Table */
	function removeClassName (elem, className) {
		elem.className = elem.className.replace(className, "").trim();
	}

	function addCSSClass (elem, className) {
		removeClassName (elem, className);
		elem.className = (elem.className + " " + className).trim();
	}

	String.prototype.trim = function() {
		return this.replace( /^\s+|\s+$/, "" );
	}

	function stripedTable() {
		if (document.getElementById && document.getElementsByTagName) {  
			var allTables = document.getElementsByTagName('table');
			if (!allTables) { return; }

			for (var i = 0; i < allTables.length; i++) {
				if (allTables[i].className.match(/[\w\s ]*scrollTable[\w\s ]*/)) {
					var trs = allTables[i].getElementsByTagName("tr");
					for (var j = 0; j < trs.length; j++) {
						removeClassName(trs[j], 'alternateRow');
						addCSSClass(trs[j], 'normalRow');
					}
					for (var k = 0; k < trs.length; k += 2) {
						removeClassName(trs[k], 'normalRow');
						addCSSClass(trs[k], 'alternateRow');
					}
				}
			}
		}
	}

	window.onload = function() { stripedTable(); }
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

	table, td, a {
		color: #000;
		font: normal normal 12px Verdana, Geneva, Arial, Helvetica, sans-serif
	}

	/* define height and width of scrollable area. Add 16px to width for scrollbar          */
	div.tableContainer {
		clear: both;
		border: 1px solid #963;
		height: 80%;
		overflow: auto;
		width: 90%;
	}

	/* Reset overflow value to hidden for all non-IE browsers. */
	html>body div.tableContainer {
		overflow: hidden;
		width: 99%
	}

	/* define width of table. IE browsers only                 */
	div.tableContainer table {
		float: left;
		width: 90%
	}

	/* define width of table. Add 16px to width for scrollbar.           */
	/* All other non-IE browsers.                                        */
	html>body div.tableContainer table {
		width: 99%;
		height: 40%;
	}
	
	thead.fixedHeader tr {
		position: relative
	}

	html>body thead.fixedHeader tr {
		display: block
	}

	/* make the TH elements pretty */
	thead.fixedHeader th {
		font-size:12px;
		text-align:center;
		color:#FFFFFF;
		background-color:#AFEEEE;
		border: solid 1px #CCCCCC;
		border-left:1;
		border-top:1;
		border-right: 1;
		border-style: outset;
		height: 30px;
	}

	/* make the A elements pretty. makes for nice clickable headers                */
	thead.fixedHeader a, thead.fixedHeader a:link, thead.fixedHeader a:visited {
		color: #FFF;
		display: block;
		text-decoration: none;
		width: 100%
	}

	thead.fixedHeader a:hover {
		color: #FFF;
		display: block;
		text-decoration: underline;
		width: 100%
	}

	html>body tbody.scrollContent {
		display: block;
		height: 505px;
		overflow: auto;
		width: 100%
	}

	tbody.scrollContent td, tbody.scrollContent tr.normalRow td {
		background: #FFF;
		border-bottom: none;
		border-left: none;
		border-right: 1px solid #CCC;
		border-top: 1px solid #DDD;
		padding: 2px 3px 3px 4px;
	}

	tbody.scrollContent tr.alternateRow td {
		background: #EEE;
		border-bottom: none;
		border-left: none;
		border-right: 1px solid #CCC;
		border-top: 1px solid #DDD;
		padding: 2px 3px 3px 4px;
	}

	html>body thead.fixedHeader th {
		width: 200px
	}
	
	html>body thead.fixedHeader th + th {
		width: 240px
	}
	
	html>body thead.fixedHeader th + th + th {
		width: 316px
	}
	
	html>body tbody.scrollContent td {
		width: 200px
	}
	
	html>body tbody.scrollContent td + td {
		width: 240px
	}
	
	html>body tbody.scrollContent td + td + td {
		width: 300px
	}
	
	/* End of Scrollable Table  CSS */
</style>	
</head>
<body>
<div><br /></div>		

	<div id="tableContainer" class="tableContainer">
		<table border="0" cellpadding="0" cellspacing="0" width="99%" class="" style="height: 99%;">
			<thead class="fixedHeader">
				<tr>
					<th style="width:5%"><a href="#">Sl#</a></th>
					<th style="width:20%"><a href="#">Code</a></th>
					<th style="width:50%"><a href="#">Name</a></th>
					<th><a href="#">User Group</a></th>
				</tr>
			</thead>
			<tbody class="scrollContent">
				<%
					for(int i =1; i <= 100; i++)
					{
						if(i%2 != 0){
				%>
				<tr>
					<td style="width:5%"><%= i %></td>
					<td style="width:20%"><a href="#" onclick="window.close();">1001</a></td>
					<td style="width:52%">Dipanjan De Bhaumik</td>
					<td>Administrator</td>
				</tr>
				<%
					}else{
				%>
				<tr class="color1">
					<td style="width:5%">
						<%= i %>
					</td>
					<td style="width:20%">
						<a href="#" onclick="window.close();">1001</a>
					</td>
					<td style="width:50%">
						Dipanjan De Bhaumik
					</td>
					<td>
						Administrator
					</td>
				</tr>							
			<%}}%>	
		</tbody>
	</table>
</div>
<div><br /></div>		
<div style="width: 95%;">
	<table border="0" cellspacing="0" cellpadding="0" width="100%" align="left" style="" class="">
		<tr>
			<td colspan="2" align="left">
				showing 10 of 100
			</td>
			<td class="" align="right" colspan="2" style="border: 0">
	 			<span style="font-weight:bold; background-image: url(../../resources/images/prev.gif);background-repeat: no-repeat; background-position: left;"> 
	 			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 			 prev 					 			 
	 			 |
	 			 &nbsp;
	 			 next
	 			 &nbsp;
	 			</span>								
	 			<span style="font-weight:bold; background-image: url(../../resources/images/next.gif);background-repeat: no-repeat; background-position: right: ;"> 
	 			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			 			
	 			</span>			
	 			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 			Goto Page
	 			<select class="select" style="text-align:center; background-color:white; width:60px;height:20px;font-size:10px;  text-transform: lowercase;">
					<option value="">-</option>					
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select> 
	 							
			</td>
		</tr>
		<tr style="line-height:20px;">
			<td colspan="4" style="border: 0">&nbsp;</td>
		</tr>																			
		<tr>
			<td align="center" colspan="4" class="">
				<input type = "button" value="   Close" style="background: #DCEDEA url(../../../resources/images/close.gif); height:30px; width: 75px; background-repeat: no-repeat; background-position: left;" onclick="history.go(-1);"/>
			</td>
		</tr>
	</table>
</div>
<!-- 
      <tr>
      	<td colspan="2" bgcolor="" style="height:20px;" align="left">
         <table cellspacing="0" cellpadding="0" width="100%"  style="">
        <tr>
 		<td width="100%" class="TD_FOOTER_BAND" align="center" >
			 <input type = "button" value="   Close" style="background: #DCEDEA url(../../../resources/images/close.gif); height:30px; width: 75px; background-repeat: no-repeat; background-position: left;" onclick="history.go(-1);"/>										
	 		</td>
		</tr>					
		</table>
	</td>
</tr>
</table>
 -->
</body>
</html>