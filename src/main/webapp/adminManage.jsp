
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Danh sách sản phẩm</title>
  <link href="CSS/css1.css" rel="stylesheet">
  <link href="CSS/css2.css" rel="stylesheet">
  <link href="CSS/css3.css" rel="stylesheet">
</head>


<body>

<header id="header" class="d-flex align-items-center">
  <div class="container">
    <div class="header-container d-flex align-items-center justify-content-between">
      <div class="logo">
        <h1 class="text-light"><a href="index.html"><span>MoDul3</span></a></h1>
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
        <h2>Danh sách sản phẩm</h2>
        <ol>
          <li><a href="${pageContext.request.contextPath}/login" name="login" id="login" class="login">Đăng nhập</a></li>
          <li><a href="${pageContext.request.contextPath}/register" name="register" id="register" class="register">Đăng ký</a></li>
        </ol>
      </div>

    </div>
  </section><!-

</main><!-- End #main -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

</body>
<script src="javaScrip/js1.js"></script>
<script src="javaScrip/js2.js"></script>
<script src="javaScrip/js3.js"></script>
</html>
