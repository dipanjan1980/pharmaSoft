<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:if test="${dataList != null }" var="test">
   <div id="container"  style="position:absolute; height:600px; max-height: 600px; min-width: 200px; overflow:auto;">
      <c:forEach var="data" items="${dataList}" varStatus="indx">
            <div id="${data[0]}" style="position:relative; cursor: pointer; 
            		 background-color:#FFEBCD; border: 1px solid #696; white-space:nowrap; 
            		 font-family:Verdana, Geneva, ms sans serif; 
            		 font-size:10px; padding-left:5px; padding-bottom: 10px; padding-right: 15px; color: blue;"
		             onmouseover="selectMe(this);" onmouseout="deselectMe(this);" 
		             onclick="populateLblValue('${data[1]}', '${data[0]}');">
	            ${data[1]}
            </div>
        </c:forEach>
    </div>
</c:if>
                 
