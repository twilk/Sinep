<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>
    <jsp:useBean id="sportData" class="sportowo.AWF" scope="application" />
    <%
    	sportData.clear();
        response.sendRedirect(request.getContextPath());
    %>
</body>
</html>
