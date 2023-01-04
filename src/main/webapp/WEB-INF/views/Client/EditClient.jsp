<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 12/30/2022
  Time: 8:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Thông tin cá nhân</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
          crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="/HQC/resource/css/style.css">
  <link href="CSS/css1.css" rel="stylesheet">
  <link href="CSS/css2.css" rel="stylesheet">
  <link href="CSS/css3.css" rel="stylesheet">
  <link rel="stylesheet" href="DemoCss.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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
  </style>

</head>
<body>
<header id="header" class="d-flex align-items-center">
  <div class="container">
    <div class="header-container d-flex align-items-center justify-content-between">
      <div class="logo">
        <h1 class="text-light"><a href="${pageContext.request.contextPath}/showClient"><span>Trang chủ</span></a></h1>
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="getstarted scrollto" href="/cart">Giỏ hàng</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div><!-- End Header Container -->
  </div>
</header><!-- End Header -->

<main id="main">
  <section id="breadcrumbs" class="breadcrumbs">
    <div class="container">

      <div class="d-flex justify-content-between align-items-center">
        <h2>Thông tin cá nhân:</h2>
        <ol>
          <c:if test="${sessionScope.get('account') == null}">
            <li><a href="${pageContext.request.contextPath}/login" name="login" id="login" class="login">Đăng
              nhập</a></li>
            <li><a href="${pageContext.request.contextPath}/register" name="register" id="register"
                   class="register">Đăng ký</a></li>
          </c:if>

          <c:if test="${sessionScope.get('account') != null}">
            <li><a href="" class="login">Xin chào : ${sessionScope.get('account').username}</a></li>
            <li><a href="${pageContext.request.contextPath}/login" class="register">Đăng xuất</a></li>
          </c:if>
        </ol>
      </div>

    </div>
  </section>
  <!-

</main><!-- End #main -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>
<section class="intro">

  <form action="/editAccountClient" method="get">
    <div class="gradient-custom-1 h-100">
      <div class="mask d-flex align-items-center h-100">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-12">
              <div class="table-responsive bg-white">
                <table class="table mb-0">
                  <thead>
                  <tr>
                    <td><td><img src="${account.img}" width="30%"  ></td></td>
                  </tr>
                  <tr>
                    <tr scope="col" ><td>Id</td><td>${account.id}</td></tr>
                  <tr scope="col" ><td>Full Name</td><td>${account.username}</td></tr>
                    <tr scope="col" ><td>Email</td><td>${account.email}</td></tr>
                    <tr scope="col" ><td>Address</td> <td>${account.address}</td></tr>
                    <tr scope="col" ><td>Phone</td>  <td>${account.phone}</td> </tr>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td><a href="/editAccountClient" class="btn btn-warning" >Edit</a></td>
                  </tr>
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
<div id="content" class="p-4 p-md-5 pt-5">
  <h2 class="mb-4">Hoá đơn mua hàng:</h2>
  <p>Lorem ipsum dolor sit ametta, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et</p>
  <%--<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">--%>
  <%--    Tạo mới--%>
  <%--</button>--%>
  <c:forEach var="bill" items="${billinfos}">
    <!-- Modal edit-->
    <div class="modal fade" id="staticBackdrop${bill.billID}" data-bs-backdrop="static"
         data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="staticBackdropLabe">Thông tin hoá đơn:</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">

              <%--<input name="productID" placeholder="nhập id"><br>--%>
            <p>Khách hàng:${bill.name}</p>
            <p>Thời gian mua:${bill.date}</p>
            <table id="myTable" class="table table-striped">
              <thead>
              <tr>
                <th>Tên sản phẩm</th>
                <th>Số lượng</th>
                <th>Giá</th>
              </tr>
              </thead>
              <tbody>

                <%--@elvariable id="products" type="java.util.List"--%>
              <c:forEach var="detail" items="${billDetails}">
                <tr>
                  <c:if test="${detail.billID == bill.billID}">
                    <td>${detail.productID}</td>
                    <td>${detail.amount}</td>
                    <td>${detail.price}</td>
                  </c:if>


                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Understood</button>
          </div>
        </div>
      </div>
    </div>
  </c:forEach>

  <table class="table table-striped">
    <thead>
    <tr>
      <th>id Hoá đơn</th>
      <th>id người dùng</th>
      <th>Tên người dùng</th>
      <th>Tổng hoá đơn</th>
      <th>Ngày giao dịch</th>
    </tr>
    </thead>
    <tbody>
    <%--@elvariable id="products" type="java.util.List"--%>
    <c:forEach var="bill" items="${bills}">
      <tr>
        <td>${bill.billID}</td>
        <td>${bill.userID}</td>
        <td>${bill.name}</td>
        <td>${bill.total}</td>
        <td>${bill.date}</td>

        <td>
          <button id="${bill.billID}" type="button" class="btn btn-primary" data-bs-toggle="modal"
                  data-bs-target="#staticBackdrop${bill.billID}">
            Xem chi tiết
          </button>
        </td>
          <%--            <td><a href="${pageContext.request.contextPath}/deleteProduct?id=${bill.billID}"--%>
          <%--                   class="btn btn-danger">Xoá</a></td>--%>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>


