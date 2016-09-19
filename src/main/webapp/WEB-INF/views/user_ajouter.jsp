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
        <h2>Ajouter un utilisateur</h2>
        <a class="menu" href="<spring:url value="/home"/>">accueil</a><br>
        
        <form:form modelAttribute="user" class="form">
            Nom : <form:input path="login" class="input"></form:input><br>
            Mot de Passe : <form:input path="mdp" class="input"></form:input><br>
            <input type="submit" value="Ajouter" class="button"/>
        </form:form>
    </body>
</html>
