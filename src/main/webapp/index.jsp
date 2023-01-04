<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- Font Awesome -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
    />
    <!-- Google Fonts -->
    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <!-- MDB -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.css"
            rel="stylesheet"
    />
    <title>Web bán xe siêu sang</title>
    <link href="CSS/css1.css" rel="stylesheet">
    <link href="CSS/css2.css" rel="stylesheet">
    <link href="CSS/css3.css" rel="stylesheet">
    <!-- MDB -->
    <script
            type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"
    ></script>
</head>
<body>
<header style="position: fixed" id="header" class="d-flex align-items-center">
    <div class="container">
        <div class="header-container d-flex align-items-center justify-content-between">
            <div class="logo">
                <h1 class="text-light"><a href="inforAccountClient"><span>My Information</span></a></h1>
            </div>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto" href="#">Home</a></li>
                    <li><a class="nav-link scrollto" href="#">About</a></li>
                    <li><a class="nav-link scrollto" href="#">Services</a></li>
                    <li><a class="nav-link scrollto" href="#">Portfolio</a></li>
                    <li><a class="nav-link scrollto" href="#">Team</a></li>
                    <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="#">Drop Down 1</a></li>
                            <li><a href="#">Drop Down 2</a></li>
                            <li><a href="#">Drop Down 3</a></li>
                            <li><a href="#">Drop Down 4</a></li>
                        </ul>
                    </li>
                    <li><a class="nav-link scrollto" href="#">Contact</a></li>
                    <c:if test="${sessionScope.get('account') != null}">
                        <li><a class="getstarted scrollto" href="/cart">Giỏ hàng</a></li>
                    </c:if>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->
        </div><!-- End Header Container -->
    </div>
</header>
<!-- End Header -->

<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <section style="background: rgba(34,34,34,0.85); margin-top: 120px;" id="breadcrumbs" class="breadcrumbs">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <h2 style="font-size: 35px; color: rgba(247,241,255,0.85)">Wellcome Hanover </h2>
                <ol  style="color: rgba(247,241,255,0)">
                    <c:if test="${sessionScope.get('account') == null}">
                        <li><a  href="${pageContext.request.contextPath}/login" name="login" id="login" class="login">Đăng
                            nhập</a></li>
                        <li><a href="${pageContext.request.contextPath}/register" name="register" id="register"
                               class="register">Đăng ký</a></li>
                    </c:if>

                    <c:if test="${sessionScope.get('account') != null}">
                        <li><a href="" class="login">Xin chào : ${sessionScope.get('account').username}</a></li>
                        <li><a href="${pageContext.request.contextPath}/logout" class="register">Đăng xuất</a></li>
                    </c:if>
                </ol>
            </div>

        </div>
    </section>
    <!-- End Breadcrumbs -->
    <!-- ======= Portfolio Details Section ======= -->
    <!-- Carousel wrapper -->
    <div
            id="carouselVideoExample"
            class="carousel slide carousel-fade"
            data-mdb-ride="carousel"
    >
        <!-- Indicators -->
        <div class="carousel-indicators">
            <button
                    type="button"
                    data-mdb-target="#carouselVideoExample"
                    data-mdb-slide-to="0"
                    class="active"
                    aria-current="true"
                    aria-label="Slide 1"
            ></button>
            <button
                    type="button"
                    data-mdb-target="#carouselVideoExample"
                    data-mdb-slide-to="1"
                    aria-label="Slide 2"
            ></button>
            <button
                    type="button"
                    data-mdb-target="#carouselVideoExample"
                    data-mdb-slide-to="2"
                    aria-label="Slide 3"
            ></button>
        </div>

        <!-- Inner -->
        <div class="carousel-inner">
            <!-- Single item -->
            <div class="carousel-item active">
                <video class="img-fluid" autoplay loop muted>
                    <%--                    <iframe src="https://www.youtube.com/embed/-4zsY28t76k" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>--%>
                    <source src="/VIEW/trailer.mp4" type="video/mp4" />
                </video>
                <div class="carousel-caption d-none d-md-block">
                    <h5>Hanover</h5>

                </div>
            </div>

            <!-- Single item -->
<%--            <div class="carousel-item">--%>
<%--               --%>
<%--                <div class="carousel-caption d-none d-md-block">--%>
<%--                    <h5>Second slide label</h5>--%>
<%--                    <p>--%>
<%--                        Lorem ipsum dolor sit amet, consectetur adipiscing elit.--%>
<%--                    </p>--%>
<%--                </div>--%>
<%--            </div>--%>

            <!-- Single item -->
<%--            <div class="carousel-item">--%>
<%--                <video class="img-fluid" autoplay loop muted>--%>
<%--                    <source--%>
<%--                            src="https://mdbcdn.b-cdn.net/img/video/Agua-natural.mp4"--%>
<%--                            type="video/mp4"--%>
<%--                    />--%>
<%--                </video>--%>
<%--                <div class="carousel-caption d-none d-md-block">--%>
<%--                    <h5>Third slide label</h5>--%>
<%--                    <p>--%>
<%--                        Praesent commodo cursus magna, vel scelerisque nisl consectetur.--%>
<%--                    </p>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
        <!-- Inner -->

        <!-- Controls -->
        <button
                class="carousel-control-prev"
                type="button"
                data-mdb-target="#carouselVideoExample"
                data-mdb-slide="prev"
        >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button
                class="carousel-control-next"
                type="button"
                data-mdb-target="#carouselVideoExample"
                data-mdb-slide="next"
        >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <!-- Carousel wrapper -->
    <c:forEach var="p" items="${products}">
        <section style="padding-top: 50px; background: rgba(247,241,255,0.36)" id="portfolio-details-3" class="portfolio-details">
            <div class="container">

                <div class="row gy-4">

                    <div class="col-lg-8">
                        <div class="portfolio-details-slider swiper">
                            <div class="swiper-wrapper align-items-center">
                                <div class="swiper-slide">
                                    <img class="swiper-img" src="${p.img}" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img class="swiper-img" src="img/xe/DBX_zing_2.jpg" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img class="swiper-img" src="img/xe/DBX_zing_3.jpg" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img class="swiper-img" src="img/xe/DBX_zing_4.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="portfolio-info">
                            <h3>Thông tin xe</h3>
                            <ul>
                                <form action="/AddProductServlet?id=${p.productID}" method="get">
                                    <li><strong>Hãng xe</strong>: ${p.productName}</li>
                                    <li><strong>Tên xe</strong>: ${p.brand}</li>
                                    <li><strong>Loại xe</strong>: ${p.kindID}</li>
                                    <li><strong>Giá xe</strong>: ${p.price}</li>
                                    <li><strong>Màu xe</strong>: ${p.color}</li>
                                    <li>
                                        <a style="background: rgba(25,25,28,0.84); color: rgba(247,241,255,0.84);" href="/AddProductServlet?id=${p.productID}&name=${p.productName}&price=${p.price}&img=${p.img}"
                                           class="btn btn-warning">Thêm vào giỏ hàng</a>
                                    </li>
                                </form>
                                <!-- ======= modal open ======= -->
                                <li>
                                    <a style="background: rgba(25,25,28,0.84); color: rgba(247,241,255,0.84)" class="btn btn-primary" data-bs-toggle="modal"
                                       data-bs-target="#myModal${p.productID}">Bình
                                        luận, đánh giá</a>
                                </li>
                                <!-- The Modal -->
                                <div id="myModal${p.productID}" class="modal">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                                <h4 class="modal-title">Comment here</h4>
                                                <button type="button" class="btn-close"
                                                        data-bs-dismiss="modal"></button>
                                            </div>
                                            <!-- Modal body -->
                                            <div class="modal-body">
                                                <p class="show-comment">Sản phẩm này đang hót</p>
                                                <table id="myTable" class="table table-striped">
                                                    <tbody>
                                                        <%--@elvariable id="products" type="java.util.List"--%>
                                                    <c:forEach var="comment" items="${comments}">
                                                        <tr>
                                                            <c:if test="${comment.productID == p.productID}">
                                                                <td>${comment.userName}</td>
                                                                <td>${comment.content}</td>
                                                            </c:if>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="modal-footer">
                                                <form action="/addComment" method="get">
                                                    <label>
                                                        <c:if test="${sessionScope.get('account') != null}">
                                                            <input name="content" class="comment"
                                                                   placeholder="Nhập đánh giá">
                                                        </c:if>
                                                        <c:if test="${sessionScope.get('account') == null}">
                                                            <input name="content" class="comment"
                                                                   placeholder="Đăng nhập để bình luận">
                                                        </c:if>
                                                        <input style="display: none" name="userID"
                                                               value=${sessionScope.get('account').id}>
                                                        <input style="display: none" name="productID"
                                                               value=${p.productID}>
                                                    </label>
                                                    <c:if test="${sessionScope.get('account') != null}">
                                                        <button type="submit" class="btn btn-primary">Gửi</button>
                                                    </c:if>
                                                </form>
                                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal">
                                                    Đóng
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- ======= modal off ======= -->
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Portfolio Details Section -->
    </c:forEach>
</main><!-- End #main -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>
<!-- Footer -->
<footer class="text-center text-lg-start bg-light text-muted">
    <!-- Section: Social media -->
    <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
        <!-- Left -->
        <div class="me-5 d-none d-lg-block">
            <span>Kết nối với chúng tôi:</span>
        </div>
        <!-- Left -->

        <!-- Right -->
        <div>
            <a href="https://www.facebook.com/ToyotaVietnam" class="me-4 text-reset">
                <i class="fab fa-facebook-f"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-twitter"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-google"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-instagram"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-linkedin"></i>
            </a>
            <a href="" class="me-4 text-reset">
                <i class="fab fa-github"></i>
            </a>
        </div>
        <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section style="background: rgba(118,115,125,0.36)"  class="">
        <div class="container text-center text-md-start mt-5">
            <!-- Grid row -->
            <div class="row mt-3">
                <!-- Grid column -->
                <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                    <!-- Content -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        <i class="fas fa-gem me-3"></i>Hanover
                    </h6>
                    <p>
                        Hệ thống nhà phân phối xe C0922H1.Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        Thành viên
                    </h6>
                    <p>
                        <a href="#!" class="text-reset">Cường Yên nhật</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Cường Việt Nam</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Hùng Việt Nam</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Tú Việt Nam</a>
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        Useful links
                    </h6>
                    <p>
                        <a href="#!" class="text-reset">Pricing</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Settings</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Orders</a>
                    </p>
                    <p>
                        <a href="#!" class="text-reset">Help</a>
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                    <!-- Links -->
                    <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
                    <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
                    <p>
                        <i class="fas fa-envelope me-3"></i>
                        info@example.com
                    </p>
                    <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
                    <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
                </div>
                <!-- Grid column -->
            </div>
            <!-- Grid row -->
        </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
        © 2021 Copyright:
        <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->
</body>
<script src="javaScrip/js1.js"></script>
<script src="javaScrip/js2.js"></script>
<script src="javaScrip/js3.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
