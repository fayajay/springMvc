<%-- 
    Document   : liste_des_films
    Created on : 23 août 2016, 14:30:53
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
        <h2><spring:message code="cle2" /></h2>
        <a class="menu" href="<spring:url value="/home"/>"><spring:message code="cle1" /></a><br>
        <a class="menu" href="<spring:url value="/serie_lister"/>"><spring:message code="cle3" /></a>    
        <a class="menu" href="<spring:url value="/genre_lister"/>"><spring:message code="cle4" /></a><br>
        <a class="menu" href="<spring:url value="/film_ajouter"/>"><spring:message code="cle8" /></a>
        <a class="menu" href="<spring:url value="/ajouter_3_films"/>"><spring:message code="cle7" /></a>
        <ol>
            <c:forEach items="${listFilm}" var="title">
                <li><strong><big>${title.titre}</big></strong>, ${title.anneeProd}, ${title.genre.nom} 
                    <a class="sup" href="<spring:url value="/supprimer_film/${title.id}"/>">Supprimer</a>
                    <a class="modif" href="<spring:url value="/modifier_film/${title.id}"/>">Modifier</a>
                </li>        
            </c:forEach>
        </ol>
    </body>
</html>
