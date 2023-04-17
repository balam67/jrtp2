<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <style>
    /* Insert CSS styles here */
    
    /* Center the login form */
.login-form {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background-color: solid #FF007F;
}

/* Style the form input fields */
.form-input {
  margin: 10px;
  padding: 10px;
  border-radius: 5px;
  border: none;
  box-shadow: 1px 1px 5px rgba(0, 0, 0, 0.2);
  font-size: 16px;
}

/* Style the form submit button */
.form-submit {
  margin: 10px;
  padding: 10px;
  border-radius: 5px;
  border: none;
  background-color: #007bff;
  color: #fff;
  font-size: 16px;
  cursor: pointer;
  transition: background-color 0.2s ease;
}

.form-submit:hover {
  background-color: #FF007F;
}

/* Style the form error message */
.form-error {
  color: red;
  font-size: 14px;
  margin-top: 5px;
}
    
    
    /* Change color of login boxes to rose */
.login-box {
  background-color: #ffcccc;
}

/* Change color of input fields to blue */
input[type="text"],
input[type="password"] {
  background-color: #66b3ff;
  border: none;
  padding: 10px;
  margin-bottom: 15px;
  color: white;
  font-size: 16px;
}
    
  </style>
</head>

<body>
  <div class="login-form">

    <h1>Login</h1>
    <form method="post" action="${pageContext.request.contextPath}/logina">
      <input type="text" name="username" class="form-input" placeholder="Username" required>
      <input type="password" name="password" class="form-input" placeholder="Password" required>
      <button type="submit" class="form-submit">Login</button>
      <c:if test="${not empty error}">
        <div class="form-error">${error}</div>
      </c:if>
    </form><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr><hr>
      <a href="${pageContext.request.contextPath}/">
            <button type="button" style="background-color: yellow;">Home</button>
         </a>
  </div>
  
</body>
</html>
