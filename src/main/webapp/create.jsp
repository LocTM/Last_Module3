<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Create new student</title>
    <style>
        h1{
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container" >
    <h1> Create New Student</h1>
    <form method="post">
        <div class="mb-3">
            <label for="exampleInputName" class="form-label">Name</label>
            <input type="text" class="form-control" id="exampleInputName" name="name" placeholder="enter name">
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email</label>
            <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="enter email">
        </div>
        <div class="mb-3">
            <label for="exampleInputAddress" class="form-label">Address</label>
            <input name="address" type="text" class="form-control" id="exampleInputAddress" placeholder="enter address">
        </div>
        <div class="mb-3">
            <label for="exampleInputDOB" class="form-label">Date of birth</label>
            <input name="dateOfBirth" type="text" class="form-control" id="exampleInputDOB" placeholder="enter date of birth YYYY-MM-DD">
        </div>
        <div class="mb-3">
            <label for="exampleInputPhone" class="form-label">Phone number</label>
            <input name="phone" type="text" class="form-control" id="exampleInputPhone" placeholder="enter phone number">
        </div>
        <div class="mb-3">
            <label class="form-label">Class </label>
            <select name="classroom" id="classroom">
                <c:forEach items="${classroom}" var="cl">
                    <option value="${cl.id}">${cl.name}</option>
                </c:forEach>
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </form>

</div>









<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>


</body>
</html>