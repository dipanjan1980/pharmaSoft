<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<head>
	<style type="text/css">
		A:hover { COLOR: blue; TEXT-DECORATION: none; font-weight: bold; }
	</style>
</head>
<table style="width:200px;" align="left">
	<tbody>
		<c:forEach var="menu" items="${ADM01}">
			<c:forEach var="obj" items="${menu.value}">
				<tr>
					<td align="right">
						<a href="${pageContext.request.contextPath}${obj.menuPath}" target="workArea">${obj.menuDisplayName}</a>
					</td>
				</tr>
			</c:forEach>
		 </c:forEach>	
	</tbody>
</table>