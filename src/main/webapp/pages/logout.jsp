<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <style>
    /* Insert CSS styles here */
    
    /* Center the login form */
.login-form {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
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
  background-color: #0062cc;
}

/* Style the form error message */
.form-error {
  color: red;
  font-size: 14px;
  margin-top: 5px;
}
    
  </style>
  <title>Home Page</title>
</head>
<body>
  <h1>Welcome ${username}!</h1>
  <a href="enquiry">Student Enquiry Form</a>
  <hr>
   <hr>
    <hr>
  
  <form action="<c:url value='/logout' />" method="POST">
    <button type="submit" class="btn btn-primary">Logout</button>
  </form>
</body>
</html>
