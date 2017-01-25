<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
	<spring:url value="/resources/css/style.css" var="styleCss"/>
	<link href="${styleCss}" rel="stylesheet"/>
	<style type="text/css">
	.box    
	{ 
		font-family:Trebuchet MS,Arial,Helvetica,sans-serif; 
		font-size:12px;
		color:red; 
		background-color:white;
		height:25px;
		border-color:none;
		border-style:inset; 
		text-transform: uppercase;
	}
	</style>
</head>

<body bgcolor="#F5FFFA">
	<table width="100%" cellspacing="0" cellpadding="0" border="0">
	 	<tr>
			<td class="header" valign="top">
				<table width="100%" cellspacing="1" cellpadding="1" border="0">
		  			<tr>
						<td class="header" style="" width="30%" align="left" valign="top">
						 Date : 10/10/2016
						</td>
						<td class="header" style="" width="30%" align="left" valign="top">
							Fast Path : <input type="text" maxlength="10" size="10" class="box"/>
										<input type = "button" value="" style="background:url(../resources/images/go.png); width: 25px; background-color: white; "/>										
						</td>
						<td class="header" width="30%" valign="middle" align="right">Welcome<b> </b> <strong>Dipanjan De Bhaumik &nbsp;[Administartor]</strong>
							&nbsp;
						</td>
						<td class="header" width="1%" valign="middle" align="left">|</td>
						<td class="header" width="2%" valign="middle" align="right">
							<a id="logOuturlID" href="http://169.144.76.120:8380/AMS/loggingout.action"><span><strong>Logout</strong></span></a>
						</td>
						<td width="1%">&nbsp;</td>
					</tr>
	       		</table>
	       	</td>
	     </tr>
	 </table>
</body>
</html>