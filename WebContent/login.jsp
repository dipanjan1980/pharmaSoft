 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>eCRM :Customer Relation Management Ver 1.0</title>
<style type="text/css">
	fieldset 
	{ 
		border:2px solid green;
		width: 20%; 
		background-color: silver; 
	}
	
	legend 
	{
	  padding: 0.2em 0.5em;
	  border:1px solid green;
	  color:white;
	  font-size:90%;
	  text-align:right;
	  background-color: green;
	  font-family:Trebuchet MS,Arial,Helvetica,sans-serif; font-size:11px;
	}

	.login  
	{ 
		font-family:Verdana,Arial,Helvetica,sans-serif; 
		font-size:10px; 
		color:#000080; 
		font-weight: bold;
	}

	.box    
	{ 
		font-family:Trebuchet MS,Arial,Helvetica,sans-serif; 
		font-size:11px;color:#000080; 
		background-color:#e1e5ea;height:30px;
		border-color:none;
		border-style:inset; 
	}
	
	.boton  
	{ 	background-color:orange;
		color:white;
		font-family:Trebuchet MS,Arial,Helvetica,sans-serif; 
		font-size:10pt;
		height:30px;
		width:100px; 
	}
	
</style>
  <script type="text/javascript">  
	function progress()
  	{
  		document.getElementById("aa").style.display='block';
  		progressBarInit();
  	} 
  </script>
</head>


<body  leftmargin="0" topmargin="60" marginwidth="490%" marginheight="60%">
  <br>
  <c:set var="login" value="${pageContext.request.contextPath}/user/login.html"/>
  <spring:form  name="f" method="post" action="${login}">

  <fieldset>
  <legend>User Login</legend>
    <input type="hidden" name="context" value="nativelogin">
    <input type="hidden" name="skin">
    <table summary="Login Box" id="loginbox" width="400" align="center" cellspacing="0" cellpadding="0">
      <tr height="30">
     	  <td rowspan="4" width="56"></td>
     	  <td colspan="2"></td>
      </tr>
      <tr height="40">
     	  <td class="login">
          	User Name
		  </td>
     	  <td>
          	<input type="text" name="userName" class="box" size="20" maxlength="100">
		  </td>
      </tr>
      <tr height="40">
     	  <td class="login">
          	Password
		  </td>
     	  <td>
          	<input type="text" name="password" class="box" maxlength="20" size="10">
          	&nbsp;
			<a class="login" style="font-weight: normal;" href="#" onclick="window.open('common/pwd_request.jsp','requestpassword','directories=no,toolbar=no,menubar=no,width=440,height=200')">Retrieve Password</a>
        </td>
      </tr>    	
      <tr height="40">
     	  <td class="login">
          	Role
		  </td>
     	  <td>
     	  	<select name="role" class="box">
     	  		<option value="A" >Administrator</option>
     	  		<option value="U" >User</option>
     	  	</select>
        </td>
      </tr>    	
      <tr height="16">
     	  <td></td>
     	  <td valign="top">
     	  	<br>
			<input type="submit" class="boton" value="Enter" accesskey="e" style="width:60px;">
			<input type="button" class="boton" value="Exit" accesskey="x" style="width:60px;">
        </td>
      </tr>    	
    </table>
    </fieldset>
      <table summary="Login Box" id="loginbox" width="400" align="center" cellspacing="0" cellpadding="0">
	      <tr height="30">
	     	  <td rowspan="4" width="56"></td>
	     	  <td colspan="2">
				&nbsp;
	     	  </td>
	      </tr>
      </table>
      <!-- 
      <table summary="Login Box" id="loginbox" width="400" align="center" cellspacing="0" cellpadding="0">
	      <tr height="30">
	     	  <td rowspan="4" width="56"></td>
	     	  <td colspan="2">
	     	  	<font style="color: red; font-family:Trebuchet MS,Arial,Helvetica,sans-serif; font-size:11px; ">
	     	  		Please Wait. Connecting to CRM server.......
	     	  	</font>
	     	  </td>
	      </tr>
      </table>
      -->
     <div id="aa" style='visibility:hidden;'>
     	<font style="color: red; font-family:Trebuchet MS,Arial,Helvetica,sans-serif; font-size:11px; ">
	     	Please Wait. Connecting to CRM server.......
	    </font>
	    <br>
   		<script type="text/javascript" src="./js/timerbar.js"></script>
   	 </div>
      
  </spring:form>
</body>
</html>