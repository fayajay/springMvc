<%-- 
    Document   : accueil
    Created on : 23 août 2016, 12:00:42
    Author     : admin
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <h2>Bienvenue</h2>
        <a class="menu" href="<spring:url value="/film_lister"/>">Liste des films</a>
        <a class="menu" href="<spring:url value="/serie_lister"/>">Liste des Series</a>
        <a class="menu" href="<spring:url value="/genre_lister"/>">Liste des Genres</a><br>
        <a class="menu" href="<spring:url value="/film_ajouter"/>">Ajouter des Films</a>
        <a class="menu" href="<spring:url value="/serie_ajouter"/>">Ajouter des Series</a>
        <a class="menu" href="<spring:url value="/genre_ajouter"/>">Ajouter un Genre</a>
        <a class="menu" href="<spring:url value="/ajouter_3_films"/>">Ajouter 3 films</a>
        <a class="menu" href="<spring:url value="/user_ajouter" />">Inscription</a>
        
    <form:form>
        
    </form:form>
    </body>
</html>
