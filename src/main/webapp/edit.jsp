<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Edit Student</h1>
    <form method="post" action="/student?action=edit">
        <input type="hidden" name="id" value="${student.id}">
        <div class="mb-3">
            <label for="exampleInputName" class="form-label">Name</label>
            <input type="text" class="form-control" id="exampleInputName" name="name" value="${student.name}" placeholder="Enter name">
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email address</label>
            <input type="email" class="form-control" id="exampleInputEmail1" name="email" value="${student.email}" placeholder="Enter email">
        </div>
        <div class="mb-3">
            <label for="exampleInputAddress" class="form-label">Address</label>
            <input type="text" class="form-control" id="exampleInputAddress" name="address" value="${student.address}" placeholder="Enter address">
        </div>
        <div class="mb-3">
            <label for="exampleInputPhone" class="form-label">Phone number</label>
            <input type="text" class="form-control" id="exampleInputPhone" name="phone" value="${student.phone}" placeholder="Enter phone number">
        </div>
        <div class="mb-3">
            <label class="form-label">Classroom</label>
            <select name="classroom" id="classroom" class="form-select">
                <c:forEach items="${classroom}" var="cl">
                    <option value="${cl.id}" <c:if test="${cl.id eq student.classID}">selected</c:if>>${cl.name}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Save</button>
    </form>
</div>
</body>
</html>
