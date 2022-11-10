<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 07/11/2022
  Time: 11:07 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
</head>
<body>
<div class="vh-100">
    <nav class="navbar navbar-light bg-light" style="height: 20%">
        <div class="container-fluid">
            <img src="https://cdn.azvd.asia/images/furama/logo-m.png" alt="" width="200" height="100"
                 class="d-inline-block align-text-top">
            <h1>FURAMA</h1>
        </div>
    </nav>
    <nav class="navbar navbar-expand-lg navbar-light bg-secondary" style="height: 10%">
        <div class="container-fluid" style="margin-left: 40px">
            <a style="font-weight: bold" class="navbar-brand" href="/employee?action=edit">Edit employee</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item" style="margin-left: 10px">
                        <a class="nav-link active" aria-current="page" href="/employee">List employee</a>
                    </li>
                    <li class="nav-item" style="margin-left: 10px">
                        <a class="nav-link active" aria-current="page" href="/employee?action=add">Add employee</a>
                    </li>
                    <li class="nav-item" style="margin-left: 10px">
                        <a class="nav-link" href="#">Customer</a>
                    </li>
                    <li class="nav-item" style="margin-left: 10px">
                        <a class="nav-link" href="/service">Service</a>
                    </li>
                    <li class="nav-item" style="margin-left: 10px">
                        <a class="nav-link" href="#">Contract</a>
                    </li>
                    <li class="nav-item" style="margin-left: 10px">
                        <a class="nav-link" href="/home">Home</a>
                    </li>
                </ul>
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button style="color: black;background: green" class="btn btn-outline-success" type="submit">
                        Search
                    </button>
                </ul>
            </div>
        </div>
    </nav>
    <div style="height: 70%">
        <p>
            <a href="/employee" role="button" class="btn btn-primary">Back list employee</a>
        </p>
        <form action="/employee?action=edit" method="post">
            <fieldset>
                <legend>Edit Employee</legend>
                <table>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="name" id="name" value="${employee.getName()}"></td>
                    </tr>
                    <tr>
                        <td>Date Of Birth:</td>
                        <td><input type="text" name="birthday" id="birthday" value="${employee.getDateOfBirth()}"></td>
                    </tr>
                    <tr>
                        <td>Id Card:</td>
                        <td><input type="number" name="idCard" id="idCard" value="${employee.getIdCard()}"></td>
                    </tr>
                    <tr>
                        <td>Salary:</td>
                        <td><input type="number" name="salary" id="salary" value="${employee.getSalary()}"></td>
                    </tr>
                    <tr>
                        <td>Phone number:</td>
                        <td><input type="number" name="phone" id="phone"
                                   value="${employee.getPhoneNumber()}"></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><input type="text" name="email" id="email" value="${employee.getEmail()}"></td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td><input type="text" name="address" id="address" value="${employee.getAddress()}"></td>
                    </tr>
                    <tr>
                        <td>Position Id:</td>
                        <td><input type="number" name="position" id="position" value="${employee.getPositionId()}">
                        </td>
                    </tr>
                    <tr>
                        <td>Education Degree Id:</td>
                        <td><input type="number" name="education" id="education"
                                   value="${employee.getEducationDegreeId()}"></td>
                    </tr>
                    <tr>
                        <td>Division Id:</td>
                        <td><input type="number" name="division" id="division" value="${employee.getDivisionId()}">
                        </td>
                    </tr>
                    <tr>
                        <td>User Name:</td>
                        <td><input type="text" name="userName" id="userName" value="${employee.getUserName()}"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Edit employee"></td>
                    </tr>
                </table>
            </fieldset>
        </form>
    </div>
</div>
</body>
</html>
