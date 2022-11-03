<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 02/11/2022
  Time: 2:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
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
            <a class="navbar-brand" href="#">Home</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item" style="margin-left: 10px">
                        <a class="nav-link active" aria-current="page" href="#">List employee</a>
                    </li>
                    <li class="nav-item" style="margin-left: 10px">
                        <a class="nav-link" href="#">Add employee</a>
                    </li>
                    <li class="nav-item" style="margin-left: 10px">
                        <a class="nav-link" href="#">Customer</a>
                    </li>
                    <li class="nav-item" style="margin-left: 10px">
                        <a class="nav-link" href="#">Service</a>
                    </li>
                    <li class="nav-item" style="margin-left: 10px">
                        <a class="nav-link" href="#">Contract</a>
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
        <table class="table">
            <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Name</th>
                <th scope="col">Date of birth</th>
                <th scope="col">Gender</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td>Danh</td>
                <td>06/09/20010</td>
                <td>Male</td>
                <td><button type="button" class="btn btn-primary">Primary</button></td>
                <td><button type="button" class="btn btn-primary">Primary</button></td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>@fat</td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td colspan="2">Larry the Bird</td>
                <td>@twitter</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
