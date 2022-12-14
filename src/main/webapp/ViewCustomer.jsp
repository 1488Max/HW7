<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer Management Application</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark"
         style="background-color: tomato">
        <div>
        </div>

        <ul class="navbar-nav">
            <li><a href="<%=request.getContextPath()%>/listCustomer"
                   class="nav-link">Customers</a></li>
        </ul>
    </nav>
</header>
<br>

<div class="row">
    <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

    <div class="container">
        <h3 class="text-center">List of Customers</h3>
        <hr>
        <div class="container text-left">

            <a href="<%=request.getContextPath()%>/newCustomer" class="btn btn-success">Add
                New Customer</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Surname</th>


            </tr>
            </thead>
            <tbody>
            <!--   for (Todo todo: todos) {  -->
            <c:forEach var="customer" items="${listCustomer}">

                <tr>
                    <td><c:out value="${customer.id}"/></td>
                    <td><c:out value="${customer.name}"/></td>
                    <td><c:out value="${customer.surname}"/></td>
                    <td><a href="editCustomer?id=<c:out value='${customer.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp; <a
                                href="deleteCustomer?id=<c:out value='${customer.id}' />">Delete</a></td>
                </tr>
            </c:forEach>
            <!-- } -->
            </tbody>

        </table>
    </div>
</div>

<a href="<%=request.getContextPath()%>/list">ViewDeveloper</a><br>

<a href="<%=request.getContextPath()%>/listProject">View Projects</a><br>

</body>
</html>
