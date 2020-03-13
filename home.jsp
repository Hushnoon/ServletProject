<%-- 
    Document   : home
    Created on : 13 Mar, 2020, 12:11:32 PM
    Author     : ali.banu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <h1>STUDENTS DATA MANAGEMENT</h1>
        <div class="container">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Course</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="s" items="${sessionScope.stds}">
                        <tr>
                            <td>${s.id}</td>
                            <td>${s.name}</td>
                            <td>${s.course}</td>
                            <td><button>Edit</button></td>
                            <td><a class="btn btn-danger" href="Remove?id=${s.id}">Delete</a></td>
                        </tr>
                    </c:forEach>                    
                </tbody>
            </table>
        </div>
    </body>
</html>
