<%-- 
    Document   : genre_ajouter
    Created on : 24 août 2016, 09:57:31
    Author     : admin
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <h2>Ajouter un genre</h2>
        <a class="menu" href="<spring:url value="/home"/>">accueil</a><br>
        <a class="menu" href="<spring:url value="/film_lister"/>">Liste des films</a>
        <a class="menu" href="<spring:url value="/serie_lister"/>">Liste des Series</a>
        <a class="menu" href="<spring:url value="/genre_lister"/>">Liste des Genres</a>

        
        <form:form modelAttribute="genre" class="form">
            Nom : <form:input path="nom" class="input"></form:input>
            <input type="submit" value="Ajouter" class="button"/>
        </form:form>
    </body>
</html>
