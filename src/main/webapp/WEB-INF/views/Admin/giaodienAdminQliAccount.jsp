<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Quản lí hoá đơn</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/HQC/resource/css/style.css">
    <style>
        #sidebar li:hover {
            background-color: #222222;
            padding-left: 0;
        }
    </style>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <style>
        .switch {
            position: relative;
            display: inline-block;
            width: 60px;
            height: 34px;
        }

        .switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            -webkit-transition: .4s;
            transition: .4s;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 26px;
            width: 26px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            -webkit-transition: .4s;
            transition: .4s;
        }

        input:checked + .slider {
            background-color: #2196F3;
        }

        input:focus + .slider {
            box-shadow: 0 0 1px #2196F3;
        }

        input:checked + .slider:before {
            -webkit-transform: translateX(26px);
            -ms-transform: translateX(26px);
            transform: translateX(26px);
        }

        /* Rounded sliders */
        .slider.round {
            border-radius: 34px;
        }

        .slider.round:before {
            border-radius: 50%;
        }

        th, td {
            text-align: center;
        }

        img {
            border-radius: 50%;
            height: 200px;
            padding: 5px;
            width: 200px;
        }
    </style>
</head>
<body>

<div class="wrapper d-flex align-items-stretch">
    <nav id="sidebar" style="z-index:15;background-color: rgba(34,34,34,0.65)">
        <div class="custom-menu">
            <button style="" type="button" id="sidebarCollapse" class="btn btn-primary ">
                <i class="fa fa-bars"></i>
                <span class="sr-only">Toggle Menu</span>
            </button>
        </div>
        <div class="p-4">
            <h1><a href="index.html" class="logo">Admin <span>Bảng quản lí</span></a></h1>
            <ul id="ulside" class="list-unstyled components mb-5">
                <li class="active">
                    <a href="${pageContext.request.contextPath}/showAdmin"><span class="fa fa-home mr-3"></span> Trang chủ</a>
                </li>
                <li>
                    <a href="/showAdminQuanly"><span class="fa fa-user mr-3"></span> Quản lí user</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/crud"><span class="fa fa-briefcase mr-3"></span> Quản lí
                        sản phẩm </a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/bill"><span class="fa fa-briefcase mr-3"></span> Quản lí
                        Hoá đơn</a>
                </li>

            </ul>

            <%--        <div class="mb-5">--%>
            <%--            <h3 class="h6 mb-3">Subscribe for newsletter</h3>--%>
            <%--            <form action="#" class="subscribe-form">--%>
            <%--                <div class="form-group d-flex">--%>
            <%--                    <div class="icon"><span class="icon-paper-plane"></span></div>--%>
            <%--                    <input type="text" class="form-control" placeholder="Enter Email Address">--%>
            <%--                </div>--%>
            <%--            </form>--%>
            <%--        </div>--%>

            <div class="footer">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                    All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a
                            href="https://colorlib.com" target="_blank">Colorlib.com</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>

        </div>
    </nav>

    <!-- Page Content -->
    <div id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">Bảng quản lí :</h2>
        <p>Lorem ipsum dolor sit ametta, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et</p>
        <%--<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">--%>
        <%--    Tạo mới--%>
        <%--</button>--%>
        <section class="intro">
            <form>
                <div class="gradient-custom-1 h-100">
                    <div class="mask d-flex align-items-center h-100">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-12">
                                    <div class="table-responsive bg-white">
                                        <table class="table mb-0">
                                            <thead>
                                            <tr>
                                                <th scope="col">Id</th>
                                                <th scope="col">Full Name</th>
                                                <th scope="col">Password</th>
                                                <th scope="col">Email</th>
                                                <th scope="col">Address</th>
                                                <th scope="col">Phone</th>
                                                <th scope="col">Img</th>
                                                <th scope="col">Edit</th>
                                                <th scope="col">Delete</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach var="acc" items="${accounts}">
                                                <tr>
                                                    <td>${acc.id}</td>
                                                    <td>${acc.username}</td>
                                                    <td>${acc.password}</td>
                                                    <td>${acc.email}</td>
                                                    <td>${acc.address}</td>
                                                    <td>${acc.phone}</td>
                                                    <td><img src="${acc.img}"></td>
                                                    <td><a href="/adminEditAccount?id=${acc.id}"
                                                           class="btn btn-warning">Edit</a></td>
                                                    <c:if test="${acc.id == 1}">
                                                        <td></td>
                                                    </c:if>
                                                    <c:if test="${acc.id != 1 }">
                                                        <td><a href="/adminDeleteAccount?id=${acc.id}"
                                                               class="btn btn-danger">Delete</a></td>
                                                    </c:if>
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </section>
</body>
</html>

