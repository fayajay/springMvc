<%-- 
    Document   : liste_des_genres
    Created on : 24 août 2016, 09:52:19
    Author     : admin
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet"  type="text/css" title="style" href="CSS/styles.css"/>
        <link href="https://fonts.googleapis.com/css?family=Fascinate+Inline" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Bungee+Shade" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ewert" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Reenie+Beanie" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>${titre}</h1>
        <h2>Liste des genres</h2>
        <a class="menu" href="<spring:url value="/home"/>">accueil</a><br>
        <a class="menu" href="<spring:url value="/serie_lister"/>">Liste des Series</a>
        <a class="menu" href="<spring:url value="/film_lister"/>">Liste des films</a><br>
        <a class="menu" href="<spring:url value="/genre_ajouter"/>">Ajouter des Genres</a>
        
        <ol>
            <c:forEach items="${listGenre}" var="g">
                <li>${g.nom}
                    <a class="sup" href="<spring:url value="/supprimer_genre/${g.id}"/>">Supprimer</a>
                    <a class="modif" href="<spring:url value="/modifier_genre/${g.id}"/>">Modifier</a>
                </li>        
            </c:forEach>
        </ol>
    </body>
</html>
