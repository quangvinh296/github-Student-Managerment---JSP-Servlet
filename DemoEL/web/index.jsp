<%-- 
    Document   : index
    Created on : Jun 6, 2020, 6:40:58 PM
    Author     : BTD
--%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <br>

        <br>
        -------------
        <br>
        ------------------------
        JSTL
                    <table border="1" >
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>EMAIL</th>
                    <th>CLASS</th>
                </tr>
            <c:forEach var="student" items="${studentlist}">
                <tr>
                    <td>${student.id}</td>
                    <td>${student.name}</td>
                    <td>${student.email}</td>
                    <td>${student.classid}</td>
                    <td>
                        <button onclick="window.location.href='DeleteServlet?id=${student.id}'">Delete</button>
                    </td>
                    <td>
                        <a href="Detail?id=${student.id}">Detail</a>
                    </td>
            </tr>
        </c:forEach>




    </table>


</body>
</html>
