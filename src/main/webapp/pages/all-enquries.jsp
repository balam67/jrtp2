<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Entity List</title>
	<style type="text/css">
	
	table {
			border-collapse: collapse;
			width: 100%;
		}
		
		th, td {
			text-align: left;
			padding: 8px;
		}
		
		tr:nth-child(even) {
			background-color: #f2f2f2;
		}
		
		th {
			background-color: #4CAF50;
			color: white;
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
	
	</style>
</head>
<body>
	<h1>Entity List</h1>
	
	<table>
		<tr>
			<th>ID</th>
			<th>Student Name</th>
			<th>Phone Number</th>
			<th>Course</th>
			<th>Class Mode</th>
			<th>Enquiry Status</th>
			<th>Action</th>
		</tr>
		
		<c:forEach var="enquiry" items="${allEnquiries}">
			<tr>
				<td>${enquiry.id}</td>
				<td>${enquiry.studentName}</td>
				<td>${enquiry.phoneNumber}</td>
				<td>${enquiry.course}</td>
				<td>${enquiry.classMode}</td>
				<td>${enquiry.enquiryStatus}</td>
				<td><a href="editenquiry?id=${enquiry.id}" class="btn btn-primary">Edit</a></td>
				<td><a href="deletebyid?id=${enquiry.id}" class="btn btn-primary">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<div>
	  <a href="${pageContext.request.contextPath}/enquiry">
            <button type="button" style="background-color: yellow;">Student Enquiry Form</button>
         </a>
         
         <a href="${pageContext.request.contextPath}/logout">
            <button type="button" style="background-color: orange;"  >Logout</button>
         </a>
</div>
</body>
</html>
