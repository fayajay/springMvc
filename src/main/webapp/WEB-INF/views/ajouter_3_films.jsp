<%-- 
    Document   : ajouter_3_films
    Created on : 25 août 2016, 13:40:40
    Author     : admin
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h2>Ajouter 3 films</h2>
        <a class="menu" href="<spring:url value="/home"/>">accueil</a><br>
        <a class="menu" href="<spring:url value="/serie_lister"/>">Liste des Series</a>
        <a class="menu" href="<spring:url value="/film_lister"/>">Liste des films</a>
        
        
        <form:form modelAttribute="dto">
            Titre 1 : <form:input path="film1.titre"/><br>
            Année de Production : <form:input path="film1.anneeProd" class="input"></form:input><br>
            Genre : <form:select path="film1.genre.id" items="${genres}" itemLabel="nom" itemValue="id"/><br><br>
                                    
            Titre 2 : <form:input path="film2.titre"/><br>
            Année de Production : <form:input path="film2.anneeProd" class="input"></form:input><br>
            Genre : <form:select path="film2.genre.id" items="${genres}" itemLabel="nom" itemValue="id"/><br><br>
            
            Titre 3 : <form:input path="film2.titre"/><br>
            Année de Production : <form:input path="film2.anneeProd" class="input"></form:input><br>
            Genre : <form:select path="film3.genre.id" items="${genres}" itemLabel="nom" itemValue="id"/><br><br>
            
            <input type="submit" value="Ajouter" class="button"/>   
        </form:form>
        
    </body>
</html>
