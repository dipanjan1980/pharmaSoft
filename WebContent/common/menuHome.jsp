<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
		<spring:url value="/resources/css/easyui.css" var="easyUi"/>  
		<spring:url value="/resources/css/demo.css" var="demoCss"/>
		<spring:url value="/resources/css/tree.css" var="treeCss"/>
		<spring:url value="/resources/css/style.css" var="styleCss"/>
		<link href="${styleCss}" rel="stylesheet"/>
		<link href="${easyUi}" rel="stylesheet"/>
		<link href="${demoCss}" rel="stylesheet"/>
		<link href="${treeCss}" rel="stylesheet"/>
		<spring:url value="/resources/js/jquery.min.js" var="jqMin"/>  
		<spring:url value="/resources/js/jquery.easyui.min.js" var="jqeasyMin"/>  
		<spring:url value="/resources/js/demo.js" var="demo"/>  
		<spring:url value="/resources/js/dtree.js" var="tree"/>  
		<script type="text/javascript" src="${jqMin}"></script>
		<script type="text/javascript" src="${jqeasyMin}"></script>
		<script type="text/javascript" src="${demo}"></script>
		<script type="text/javascript" src="${tree}"></script>
		
</head>
<body class="easyui-layout">
	<div name="menu" data-options="region:'west',split:true,title:'Menu'" style="width:240px;padding:2px;">
		<div class="easyui-accordion" style="width:230px;height:100%;">
			<div title="Administration" data-options="selected:true" style="padding:10px;">
				<jsp:include page="adminMenu.jsp"/>		
			</div>
			<div title="Accounts" style="padding:10px;height: 5px;">
				<jsp:include page="accountsMenu.jsp"/>		
			</div>
			<div title="Inventory" style="padding:10px;">
				<jsp:include page="inventoryMenu.jsp"/>		
			</div>
			<div title="Sales" style="padding:10px">
				<p>Content</p>
			</div>
			<div title="Purchase" style="padding:10px">
				<p>Content2</p>
			</div>
			<div title="Utility" style="padding:10px">
				<p>Content2</p>
			</div>
		</div>
	</div>
	<c:set  var="title" value="" />
	<div name="main" align="justify" data-options="region:'center',title:'${title}'" style="width:100%; height=100%; padding:5px;">
		<c:set value="${pageContext.request.contextPath}/common/menuRightPanel.jsp" var="mainJsp"/>  
		<iframe name="content" src="${mainJsp}" width="100%" height="100%"  scrolling="no"></iframe>
	</div>
</body>
</html>
















