<%--
  Created by IntelliJ IDEA.
  User: FPT SHOP
  Date: 1/3/2023
  Time: 11:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bootstrap 5 Thank You Example</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
<div class="vh-100 d-flex justify-content-center align-items-center">
  <div>
    <div class="mb-4 text-center">
      <svg xmlns="http://www.w3.org/2000/svg" class="text-success" width="75" height="75" fill="currentColor" class="bi bi-check-circle-fill" viewBox="0 0 16 16">
        <path
                d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
      </svg>
    </div>
    <div class="text-center">
      <h1>Cảm ơn !</h1>
      <p>Xe sẽ được vận chuyển đến nhà bạn trong vòng 30p, hoặc không </p>
      <form method="post" action="/mua">
        <button type="submit" class="btn btn-primary" >Tiếp tục mua xe </button>
      </form>
    </div>
  </div>
</div>
</body>
</html>
