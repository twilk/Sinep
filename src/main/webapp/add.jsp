<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>
    <jsp:useBean id="storage" class="sportowo.AllSportsData" scope="application" />
    <jsp:useBean id="message" class="sportowo.Sport" scope="request" />
    <jsp:setProperty name="message" property="*" />

    <%
        storage.add(message);
        response.sendRedirect(request.getContextPath());
    %>
</body>
</html>
