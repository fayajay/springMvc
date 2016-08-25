<%-- 
    Document   : serie_ajouter
    Created on : 25 août 2016, 09:59:17
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
        <h2>Ajouter une Serie</h2>
        <a class="menu" href="<spring:url value="/home"/>">accueil</a><br>
        <a class="menu" href="<spring:url value="/serie_lister"/>">Liste des Series</a>
        <a class="menu" href="<spring:url value="/film_lister"/>">Liste des Films</a>
        <a class="menu" href="<spring:url value="/genre_lister"/>">Liste des Genres</a>
        
         <form:form modelAttribute="serie" class="form">
            Titre : <form:input path="titre" class="input"></form:input><br>
            <input type="submit" value="Ajouter" class="button"/>
        </form:form>
    </body>
</html>
