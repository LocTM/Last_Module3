<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>List students</title>
    <style>
        .d-grid{
            margin: 10px !important;
        }
        h1{
            text-align: center;
        }
    </style>
</head>
<body>
<h1>Students List</h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">DateOfBirth</th>
        <th scope="col">Email</th>
        <th scope="col">Address</th>
        <th scope="col">Phone</th>
        <th scope="col">ClassRoom</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${students}" var="st">
        <tr>
            <th scope="row">${st.id}</th>
            <td>${st.name}</td>
            <td>${st.dateOfBirth}</td>
            <td>${st.email}</td>
            <td>${st.address}</td>
            <td>${st.phone}</td>
            <td>${st.className}</td>
            <td>
                <a href="/student?action=edit&id=${st.id}" class="btn btn-primary">Edit</a>
            </td>
            <td>
                <form method="post" action="/student?action=delete">
                    <input type="hidden" name="id" value="${st.id}">
                    <button type="submit" class="btn btn-danger">Delete</button>
                </form>
            </td>
        </tr>
    </c:forEach>


    </tbody>
</table>
<div class="d-grid gap-2 col-2 mx-auto">
    <button class="btn btn-primary" type="button">
        <a href="/student?action=create" class="btn text-light ms-auto">Create new student</a>
    </button>


</div>
</body>
</html>