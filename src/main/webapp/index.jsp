<%@page import="sportowo.AllSportsData"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Menu Glowne (dodawanie sportu)</title>
</head>
<body>
<jsp:useBean id="eSport" class="sportowo.Sport" scope="session" />

    <h2>Dodaj sport!</h2>
   
    <form action="addSport" method="post">
        Nazwa:<br/> <input type="text" name="nazwa" value="${eSport.nazwa}"><br/>
        Ilosc graczy:
        <br/> <input type="radio" name="ilosc" value="jednoosobowe" <%= (eSport.getIlosc().contains("jednoosobowe"))?("checked='checked'"):""%>> Jednoosobowe
		<br/> <input type="radio" name="ilosc" value="wieloosobowe" <%= (eSport.getIlosc().contains("wieloosobowe"))?("checked='checked'"):""%>> Wieloosobowe 
		<br/> <input type="radio" name="ilosc" value="druzynowe" <%= (eSport.getIlosc().contains("druzynowe"))?("checked='checked'"):""%>> Druzynowe
		
		
		<br/> Kategoria :
		<br/> <input type="radio" name="kategoria" value="sporty halowe" <%= (eSport.getKategoria().contains("sporty halowe"))?("checked='checked'"):""%>> sporty halowe
		<br/> <input type="radio" name="kategoria" value="sporty letnie" <%= (eSport.getKategoria().contains("sporty letnie"))?("checked='checked'"):""%>> sporty letnie
		<br/> <input type="radio" name="kategoria" value="sporty zimowe" <%= (eSport.getKategoria().contains("sporty zimowe"))?("checked='checked'"):""%>> sporty zimowe
		<br/> <input type="radio" name="kategoria" value="sporty wodne" <%= (eSport.getKategoria().contains("sporty wodne"))?("checked='checked'"):""%>> sporty wodne
		<br/> <input type="radio" name="kategoria" value="sporty powietrzne" <%= (eSport.getKategoria().contains("sporty powietrzne"))?("checked='checked'"):""%>> sporty uprawiane w powietrzu
		<br/> <input type="radio" name="kategoria" value="sporty walki" <%= (eSport.getKategoria().contains("sporty walki"))?("checked='checked'"):""%>> sporty walki
		<br/> <input type="radio" name="kategoria" value="sporty planszowe" <%= (eSport.getKategoria().contains("sporty planszowe"))?("checked='checked'"):""%>> sporty planszowe
		<br/> <input type="radio" name="kategoria" value="sporty ekstremalne" <%= (eSport.getKategoria().contains("sporty ekstremalne"))?("checked='checked'"):""%>> sporty ekstremalne
		
		<br/> <select name="wynik">
				<option <%= ("czas".equals(eSport))?("selected='selected'"):""%> >czas</option>
				<option <%= ("odleglosc".equals(eSport))?("selected='selected'"):""%> >odleglosc</option>
				<option <%= ("dlugosc".equals(eSport))?("selected='selected'"):""%> >dlugosc</option>
				<option <%= ("ciezar".equals(eSport))?("selected='selected'"):""%> >ciezar</option>
				<option <%= ("ogloszenie zwyciezcy".equals(eSport))?("selected='selected'"):""%> >ogloszenie zwyciezcy</option>
				<option <%= ("inne".equals(eSport))?("selected='selected'"):""%> >inne</option>
			</select>
			
		<br/>Opis sportu: 
		<br/><textarea name="opis"  rows="3" cols="100">${eSport.opis}</textarea>
		
		
		<br/>
        <input type="submit" value="Dodaj">
    </form>
    <form action="clear.jsp">
    	<input type="submit" value="Wyczysc dane">
	</form>

    <form action="showSports.jsp">
    	<input type="submit" value="Pokaz dane">
	</form>
	
</body>
</html>
