<%-- 
    Document   : merguez_form
    Created on : 25 août 2016, 15:57:58
    Author     : admin
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello La Merguez</h1>
        
        <form:form modelAttribute="merguez">
            Saucisse : <form:input path="saucisse" /> <form:errors path="saucisse"/><br>
            Chipolata : <form:input path="chipolata" /> <form:errors path="chipolata"/><br>
            Brochette : <form:input path="brochette" /> <form:errors path="brochette"/><br>
            <input type="submit"/>
        </form:form>
        
    </body>
</html>
