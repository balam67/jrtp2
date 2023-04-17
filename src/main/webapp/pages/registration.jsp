<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


    

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <style>
       body {
  background-color:#add8e6;
  font-family: Arial, sans-serif;
}

form {
  background-color: #007bff;
  border-radius: 5px;
  box-shadow: 0px 0px 5px #ccc;
  padding: 20px;
  width: 400px;
  margin: auto;
  margin-top: 50px;
}

h2 {
  text-align: center;
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="tel"] {
  width: 100%;
  padding: 10px;
  margin: 10px 0px;
  border: none;
  border-radius: 3px;
  box-sizing: border-box;
  font-size: 16px;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
  font-size: 16px;
  margin-top: 20px;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

.error {
  color: red;
}

    </style>
</head>
<body>
    <h2>User Registration</h2>
    <form:form action="/process-registration" method="post" modelAttribute="userRegistrationDto">
        <div>
            <form:label class="form-label" path="username">Username:</form:label>
            <form:input type="text" class="form-control" path="username"/>
        </div>
        <div>
            <form:label class="form-label" path="password">Password:</form:label>
            <form:password class="form-control" path="password"/>
        </div>
       
        <div>
            <form:label class="form-label" path="email">Email:</form:label>
            <form:input type="email" class="form-control" path="email"/>
        </div>
        <div>
            <form:label class="form-label" path="phoneNumber">Phone Number:</form:label>
            <form:input type="text" class="form-control" path="phoneNumber"/>
        </div>
        
        <div>
            <button type="submit" class="form-submit-btn">Register</button>
        </div>
       
        <div>
        
        <a href="${pageContext.request.contextPath}/loginhomepage">
            <button type="button" style="background-color: yellow;">Login</button>
         </a>
       
       
       <a href="${pageContext.request.contextPath}/">
            <button type="button" style="background-color: yellow;">Home</button>
         </a>
       
        </div>
    </form:form>
</body>
</html>
</html>