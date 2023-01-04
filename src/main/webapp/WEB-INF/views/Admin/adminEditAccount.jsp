<%--
Created by IntelliJ IDEA.
User: dell
Date: 12/29/2022
Time: 12:03 AM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
  <script src="<c:url value="/HQC/resource/js/jquery.min.js"/>"></script>
  <script src="${pageContext.request.contextPath}/HQC/resource/js/popper.js"></script>
  <script src="${pageContext.request.contextPath}/HQC/resource/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/HQC/resource/js/main.js"></script>
  <style >
    .gradient-custom-3 {
      /* fallback for old browsers */
      background: #84fab0;

      /* Chrome 10-25, Safari 5.1-6 */
      background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5));

      /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
      background: linear-gradient(to right, rgba(132, 250, 176, 0.5), rgba(143, 211, 244, 0.5))
    }
    .gradient-custom-4 {
      /* fallback for old browsers */
      background: #84fab0;

      /* Chrome 10-25, Safari 5.1-6 */
      background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1));

      /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
      background: linear-gradient(to right, rgba(132, 250, 176, 1), rgba(143, 211, 244, 1))
    }
    #div_left{
      float: left;
    }
    #div_right{
      float: left;
    }
  </style>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
          crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/HQC/resource/css/style.css">

</head>
<body>
<section class="vh-100 bg-image"
         style="background: url('https://scr.vn/wp-content/uploads/2020/07/T%E1%BA%A3i-h%C3%ACnh-n%E1%BB%81n-4k-Si%C3%AAu-xe-Roll-Royce-scaled.jpg') center /cover no-repeat; ">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h3 class="text-uppercase text-center mb-3">Form Edit Account</h3>



              <form action="/adminEditAccount" method="post">


                <div class="form-outline mb-2">
                  <label class="form-label">Id</label>
                  <input type="number" name="id" class="form-control form-control-lg" readonly value="${account.id}">
                </div>
                <div class="form-outline mb-2">
                  <label class="form-label">Your Email</label>
                  <input value="${account.email}" type="text" name="email" class="form-control form-control-lg" pattern="\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+" required />
                </div>

                <div class="form-outline mb-2">
                  <div class="col-6" id="div_left" style="padding-left: 0px">
                    <label class="form-label" >Password</label>
                    <input value="${account.password}" type="text" id="password" name="password" class="form-control form-control-lg" pattern="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$" title="Please include at least 1 uppercase character, 1 lowercase character, and 1 number." required>
                  </div>
                  <div class="col-6" id="div_right" style="padding-right: 0px">
                    <label class="form-label">Your Phone</label>
                    <input value="${account.phone}" type="text" name="phone" class="form-control form-control-lg" pattern="\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})" required/>

                  </div>

                </div>
                <div class="form-outline mb-2">
                  <label class="form-label">Full Name</label>
                  <input value="${account.username}" type="text" name="username" class="form-control form-control-lg"  required>

                </div>
                <div class="form-outline mb-2" style="padding-bottom: 20px">
                  <label class="form-label" >Your Address</label>
                  <input value="${account.address}" type="text" name="address" class="form-control form-control-lg" required/>
                </div>
                <div class="form-outline mb-2">
                  <label class="form-label">Your Img</label>
                  <input value="${account.img}" type="text" name="img" class="form-control form-control-lg" required />
                </div>


                <div class="d-flex justify-content-center">
                  <input type="submit" class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" value="Update Value">
                </div>


              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<script>

  var password = document.getElementById("password")
          , confirm_password = document.getElementById("confirm_password");

  function validatePassword(){
    if(password.value != confirm_password.value) {
      confirm_password.setCustomValidity("Passwords Don't Match");
    } else {
      confirm_password.setCustomValidity('');
    }
  }

  password.onchange = validatePassword;
  confirm_password.onkeyup = validatePassword;
</script>
<script src="<c:url value="/HQC/resource/js/jquery.min.js"/>"></script>
<script src="${pageContext.request.contextPath}/HQC/resource/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/HQC/resource/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/HQC/resource/js/main.js"></script>
</body>
</html>
