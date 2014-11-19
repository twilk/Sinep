<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<body>
      
     <c:forEach var="sportId" begin="1" end="${sportData.allSports.size()}">
        <h2>Nazwa: ${sportData.allSports.get(sportId-1).nazwa}</h2>
        <p>Ilosc graczy: ${sportData.allSports.get(sportId-1).ilosc}</p>
        <p>Kategoria: ${sportData.allSports.get(sportId-1).kategoria}</p>
        <p>Sposob prezentacji wyniku: ${sportData.allSports.get(sportId-1).wynik}</p>
        <p>Opis: ${sportData.allSports.get(sportId-1).opis}</p>
        <br/><br/>
   </c:forEach>
   
      <form action="index.jsp">
    	<input type="submit" value="Dodaj sport">
	</form>
</body>
</html>
