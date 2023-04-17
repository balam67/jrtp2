<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


    

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
		<form:form method="put" action="/update-enquiry" modelAttribute="updatedEnquiry">
		
		    <label for="id">Student ID:</label>
			 <input type="text" name="id" value="${updatedEnquiry.id}"  />
			 <br><br>
		
			<label for="studentName">Student Name:</label>
			<input type="text" id="studentName" name="studentName" value="${updatedEnquiry.studentName}" >
			<br><br>
			<label for="phoneNumber">Phone Number:</label>
			<input type="text" id="phoneNumber" name="phoneNumber" value="${updatedEnquiry.phoneNumber}" >
			<br><br>
			
			<label for="course">Course:</label>
			<form:select path="course" id="course" name="course" onchange="courseDisableSelectedOption()">
			     <form:option value="${updatedEnquiry.course}" label="${updatedEnquiry.course}"  disabled="true"/>
			     <form:option value="Java" label="Java" />
			     <form:option value="Python" label="Python" />
			     <form:option value="Web Development" label="Web Development" />
		   </form:select>
		   <script>
					function courseDisableSelectedOption() {
						var selectElement = document.getElementById("course");
						  var selectedOption = selectElement.options[selectElement.selectedIndex];
						  selectedOption.disabled = true;

						  // select the first enabled option (if any)
						  for (var i = 0; i < selectElement.options.length; i++) {
						    if (!selectElement.options[i].disabled) {
						      selectElement.selectedIndex = i;
						      break;
						    }
						  }
					}
		 </script>
		   
		   
		   
			<br><br>
			<label for="classMode">Class Mode:</label>
		<form:select path="classMode" id="classMode" name="classMode" onchange="classModeDisableSelectedOption()">
			<form:option value="${updatedEnquiry.classMode}" label="${updatedEnquiry.classMode}"  disabled="true"/>
			<form:option value="Online" label="Online" />
			<form:option value="Offline" label="Offline" />
		</form:select>
		
		
		 <script>
					function classModeDisableSelectedOption() {
						var selectElement = document.getElementById("classMode");
						  var selectedOption = selectElement.options[selectElement.selectedIndex];
						  selectedOption.disabled = true;

						  // select the first enabled option (if any)
						  for (var i = 0; i < selectElement.options.length; i++) {
						    if (!selectElement.options[i].disabled) {
						      selectElement.selectedIndex = i;
						      break;
						    }
						  }
					}
		 </script>
		<br><br>
		<label for="enquiryStatus">Enquiry Status</label>
		<form:select path="enquiryStatus" id="enquiryStatus">
			<form:option value="${updatedEnquiry.enquiryStatus}" label="${updatedEnquiry.enquiryStatus}" selected="true" />
			<form:option value="new" label="new" />
			<form:option value="ENROLLED" label="Enrolled" />
			<form:option value="lost" label="lost" />
		</form:select>	
			
			<input type="submit" value="Submit">
		</form:form>
		
	</div>
<div>
	  <a href="${pageContext.request.contextPath}/enquiry">
            <button type="button" style="background-color: yellow;">Show Enquries</button>
         </a>
         
         <a href="${pageContext.request.contextPath}/logout">
            <button type="button" style="background-color: orange;"  >Logout</button>
         </a>
</div>
</body>
</html>
