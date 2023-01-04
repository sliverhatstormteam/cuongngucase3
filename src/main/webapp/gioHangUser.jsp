<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Giỏ hàng của bạn</title>
    <link href="CSS/css1.css" rel="stylesheet">
    <link href="CSS/css2.css" rel="stylesheet">
    <link href="CSS/css3.css" rel="stylesheet">
</head>
<body>
<header id="header" class="d-flex align-items-center">
    <div class="container">
        <div class="header-container d-flex align-items-center justify-content-between">
            <div class="logo">
                <h1 class="text-light"><a href="${pageContext.request.contextPath}/showClient"><span>MoDul3</span></a></h1>
            </div>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="getstarted scrollto" href="${pageContext.request.contextPath}/cart">Giỏ hàng</a></li>
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
                <h2>Giỏ hàng của bạn</h2>
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
<table id="myTable" class="table table-striped">
    <thead>
    <tr>
        <th>Tên sản phẩm</th>
        <th>Hãng</th>
        <th>Ảnh</th>
        <th>Giá</th>
        <th>Loại</th>
        <th>Mô tả</th>
        <th>Màu sắc</th>
    </tr>
    </thead>
    <tbody>
    <%--@elvariable id="products" type="java.util.List"--%>
    <c:forEach var="p" items="${cartList}">
        <tr>
            <td>${p.productName}</td>
            <td>${p.brand}</td>
            <td><img src="${p.img}" width="250" height="200"></td>
                <%--                <c:if test="${p.role}"><td style="color: green">Admin</td></c:if>--%>
                <%--                <c:if test="${!p.role}"><td style="color: red">User</td> </c:if>--%>
            <td>${p.price}</td>
            <td>${p.kindID}</td>
            <td>${p.description}</td>
            <td>${p.color}</td>
                <%--                    <td><a href="${pageContext.request.contextPath}/editProduct?id=${p.productID}"--%>
                <%--                           class="btn btn-warning">Sửa</a></td>--%>
            <td><a href="${pageContext.request.contextPath}/xoaCart?id=${p.productID}"
                   class="btn btn-danger">Xoá</a></td>
        </tr>
    </c:forEach>

    </tbody>

</table>

    <a style="float: right" href="${pageContext.request.contextPath}/mua"
       class="btn btn-get-started">Mua hàng </a>


</body>
<script src="javaScrip/js1.js"></script>
<script src="javaScrip/js2.js"></script>
<script src="javaScrip/js3.js"></script>
</html>
