<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<head>
	<style type="text/css">
		A:hover { COLOR: blue; TEXT-DECORATION: none; font-weight: bold; }
	</style>
</head>
<table style="width:200px;" align="left">
	<thead>
	<tr valign="top">
		<th align="right" style="padding:5px;" background-color: cyan;">
			Master
		</th>
	</tr>
	</thead>
	<tbody>
		<c:forEach var="menu" items="${INV01}">
			<c:forEach var="obj" items="${menu.value}">
			<c:if test="${obj.menuSubCategory == 'M'}"> <!-- Master Menu   -->
				<tr>
					<td align="right">
						<a href="${pageContext.request.contextPath}${obj.menuPath}" target="workArea">${obj.menuDisplayName}</a>
					</td>
				</tr>
				</c:if>
			</c:forEach>
		 </c:forEach>	
		<tr valign="top">
			<th align="right" style="padding:5px; background-color: cyan;" >
				Transactions
			</th>
		</tr>
		<c:forEach var="menu" items="${INV01}">
			<c:forEach var="obj" items="${menu.value}">
			<c:if test="${obj.menuSubCategory == 'T'}">		<!-- Transaction Menu  -->
				<tr>
					<td align="right">
						<a href="${pageContext.request.contextPath}${obj.menuPath}" target="workArea">${obj.menuDisplayName}</a>
					</td>
				</tr>
				</c:if>
			</c:forEach>
		 </c:forEach>	
		<tr valign="top">
			<th align="right" style="padding:5px; background-color: cyan;" >
				Reports
			</th>
		</tr>
		<c:forEach var="menu" items="${INV01}">
			<c:forEach var="obj" items="${menu.value}">
				<c:if test="${obj.menuSubCategory == 'R'}">	<!-- Reports Menu -->
					<tr>
						<td align="right">
							<a href="${pageContext.request.contextPath}${obj.menuPath}" target="workArea">${obj.menuDisplayName}</a>
						</td>
					</tr>
				</c:if>
			</c:forEach>
		</c:forEach>	
	</tbody>
</table>