<%-- 
    Document   : detail
    Created on : Jun 9, 2020, 7:18:54 PM
    Author     : BTD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        Id: ${studentDetail.id}
        <br>
        Name: ${studentDetail.name}
        ${studentDetail.avg}
        ${studentDetail.rate}
    </body>
</html>
