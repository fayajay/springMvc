<%-- 
    Document   : modifier_film
    Created on : 24 août 2016, 15:20:14
    Author     : admin
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <spring:url value="/CSS/styles.css" var="css" />
        <link rel="stylesheet"  type="text/css" title="style" href="${css}"/>
        <link href="https://fonts.googleapis.com/css?family=Fascinate+Inline" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Bungee+Shade" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Ewert" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Reenie+Beanie" rel="stylesheet">
        
        <title>JSP Page</title>
    </head>
    <body>
        <h1>${titre}</h1>
        <h2>Modifier un film</h2>
        <a class="menu" href="<spring:url value="/home"/>">accueil</a><br>
        <a class="menu" href="<spring:url value="/serie_lister"/>">Liste des Series</a>
        <a class="menu" href="<spring:url value="/film_lister"/>">Liste des Films</a>
        <a class="menu" href="<spring:url value="/genre_lister"/>">Liste des Genres</a>
        
        <h3>${film.titre}</h3>
        
        <form:form modelAttribute="film" class="form">
            Titre : <form:input path="titre" class="input"></form:input><br>
            Année de Production : <form:input path="anneeProd" class="input"></form:input><br>
            Synopsis : <form:textarea path="synopsis" class="input"></form:textarea><br>
            Genre : <form:select path="genre.id" items="${genres}" itemLabel="nom" itemValue="id" class="input"></form:select><br>
            <input type="submit" value="Modifier" class="button"/>
        </form:form>
    </body>
</html>
