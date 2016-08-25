<%-- 
    Document   : liste_des_series
    Created on : 23 août 2016, 15:36:05
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
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
        <h2>Liste des Series</h2>
        <a class="menu" href="<spring:url value="/home"/>">accueil</a><br>
        <a class="menu" href="<spring:url value="/film_lister"/>">Liste des films</a>
        <a class="menu" href="<spring:url value="/genre_lister"/>">Liste des Genres</a><br>
        <a class="menu" href="<spring:url value="/serie_ajouter"/>">Ajouter des Series</a>

        <ol>
            <c:forEach items="${listSerie}" var="serie">
                <li><strong><big>${serie.titre}</big></strong>
                    <a class="sup" href="<spring:url value="/supprimer_serie/${serie.id}"/>">Supprimer</a>
                    <a class="modif" href="<spring:url value="/modifier_serie/${serie.id}"/>">Modifier</a>
                </li>        
            </c:forEach>
        </ol>
    </body>
</html>
