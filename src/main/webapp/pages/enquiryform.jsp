<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
       
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
<!DOCTYPE html>
<html>
<head>
	<title>Enquiry Form</title>
	<style>
		.box {
			background-color: #F8F8FF;
			border: 2px solid #008CBA;
			padding: 10px;
			margin: 10px;
			border-radius: 10px;
		}
		
		input[type=text], select {
			width: 100%;
			padding: 12px 20px;
			margin: 8px 0;
			display: inline-block;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
		}
		
		
		.btn {
			background-color: orange;
			border: none;
			color: white;
			padding: 12px 16px;
			font-size: 16px;
			cursor: pointer;
		}
		
		.btn:hover {
			background-color: #fba500;
		}
		input[type=submit] {
			background-color: #008CBA;
			color: white;
			padding: 14px 20px;
			margin: 8px 0;
			border: none;
			border-radius: 4px;
			cursor: pointer;
		}
		
		input[type=submit]:hover {
			background-color: #45a049;
		}
	</style>
</head>
<body style="background-color: #87CEFA;">
	<div class="box">
		<h2>Enquiry Form</h2>
		<form method="post" action="/submit-enquiry">
			<label for="studentName">Student Name:</label>
			<input type="text" id="studentName" name="studentName" placeholder="Enter your name...">
			<label for="phoneNumber">Phone Number:</label>
			<input type="text" id="phoneNumber" name="phoneNumber" placeholder="Enter your phone number...">
			
			<label for="course">Course:</label>
			<select id="course" name="course">
				<option value="">Select a course...</option>
				<option value="Java">Java</option>
				<option value="Python">Python</option>
				<option value="Web Development">Web Development</option>
			</select>
			
			<label for="classMode">Class Mode:</label>
			<select id="classMode" name="classMode">
				<option value="">Select Class Mode...</option>
				<option value="online">Online</option>
				<option value="classroom">ClassRoom</option>
			</select>
			
			<label for="enquiryStatus">Batch:</label>
			<select id="enquiryStatus" name="enquiryStatus">
				<option value="">Select a batch...</option>
				<option value="new">New</option>
				<option value="enrolled">Enrolled</option>
				<option value="lost">Lost</option>
			</select>
			<input type="submit" value="Submit">
		</form>
	</div>
	
	  <a href="${pageContext.request.contextPath}/allenquries">
            <button type="button" style="background-color: yellow;">Show Enquries</button>
         </a>
         
         <a href="${pageContext.request.contextPath}/logout">
            <button type="button" style="background-color: orange;"  >Logout</button>
         </a>

</body>
</html>
