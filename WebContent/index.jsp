<html>
<head>
<script type="text/javascript">
	function popup(url) 
	{
	 window.close();
	 params  = 'width='+screen.width;
	 params += ', height='+screen.height;
	 params += ', top=0, left=0, statusbar=no,'
	 params += ', fullscreen=yes, maximize';
	
	 newwin=window.open(url,'login', params);
	 if (window.focus) {newwin.focus()}
	 return false;
	}
</script>
</head>
<body>
	<script type="text/javascript">
		popup("login.jsp");
	</script>
</body>
</html>


<!-- 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/style.css">	
	</head>
	<script type="text/javascript">
		function login(){
			document.loginForm.action ="./common/adminHome.jsp";
			document.loginForm.submit();
		}
	</script>
	<body LEFTMARGIN=0 RIGHTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0 bgcolor="#FFF8C6">
	<c:set var="login" value="${pageContext.request.contextPath}/pharma/user/login.html"/>
	<form:form method="post" action="${login}" id="loginForm">
		<table BORDER=0 CELLPADDING=0 CELLSPACING=5 align="center" width="100%">
			<tr bgcolor="#E0E0E0">
				<td height="15" valign="middle">
					<table width="100%">
						<tr> 
							<td align="right">
								<a href='index.jsp?page=register'>Register</a>
								&nbsp;|&nbsp;
								<a href='index.jsp?page=login'>Login</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td valign="middle" align="left" bgcolor="#C6E3FF">
					<table width="100%" height="10">
						<tr>
							<td valign="middle" align="center" width="60"><img src="images/login.gif"/></td>
							<td valign="middle"><span class="head">Login</span></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="10"></td>
			</tr>
			<tr>
				<td align="center">
						<table width="250" border="0" cellspacing="1" cellpadding="3" align="center">
								<tr bgcolor="#6699CC"> 
									<td colspan="2" align="center"><font color="#FFFFFF">
										<b>Login Form</b></font>
									</td>
								</tr>
								<tr bgcolor="#E7E7E7"> 
									<td width="150">
										&nbsp;Username:
									</td>
									<td>
										<font face="Verdana">
											<input type="text" name="userName" id="userName"/>
										</font>
									</td>
								</tr>
								<tr bgcolor="#E7E7E7"> 
									<td width="150">
										&nbsp;Password:
									</td>
									<td bgcolor="#E7E7E7">
										<font face="Verdana">
											<input type="text" name="password" id="password"/>
										</font>
									</td>
								</tr>
								<tr bgcolor="#D9DBDE"> 
									<td colspan="2" align="right">
										<input type=submit value="Login" class="BTN">
									</td>
								</tr>
							</table>
					</form:form>
				</td>
			</tr>
		</table>
		</form>
	</body>
</html>
-->