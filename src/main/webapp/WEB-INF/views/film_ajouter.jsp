<%-- 
    Document   : film_ajouter
    Created on : 23 août 2016, 16:19:42
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
        <h2><spring:message code="cle8" /></h2>
        <a class="menu" href="<spring:url value="/home"/>"><spring:message code="cle1" /></a><br>
        <a class="menu" href="<spring:url value="/serie_lister"/>"><spring:message code="cle3" /></a>
        <a class="menu" href="<spring:url value="/film_lister"/>"><spring:message code="cle2" /></a>
        <a class="menu" href="<spring:url value="/genre_lister"/>"><spring:message code="cle4" /></a>

        
        <form:form modelAttribute="film" class="form">
            <spring:message code="cle12" /> <form:input path="titre" class="input"></form:input><br>
            <spring:message code="cle13" /> <form:input path="anneeProd" class="input"></form:input><br>
            <spring:message code="cle14" /> <form:textarea path="synopsis" class="input"></form:textarea><br>
            <spring:message code="cle15" /> <form:select path="genre.id" items="${genres}" itemLabel="nom" itemValue="id" class="input"></form:select><br>
            <input type="submit" value="Ajouter" class="button"/>
        </form:form>
    </body>
</html>
