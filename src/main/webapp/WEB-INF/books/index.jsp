<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body>
	<div class="container">
	<h1 class="text-center mb-5">All Books</h1>
	<table class="table table-bordered table-active">
	    <thead class="thead-dark">
	        <tr>
	            <th>Title</th>
	            <th>Description</th>
	            <th>Language</th>
	            <th>Number of Pages</th>
	        </tr>
	    </thead>
	    <tbody>
	        <c:forEach items="${books}" var="book">
	        <tr class="table-info">
	            <td><c:out value="${book.title}"/></td>
	            <td><c:out value="${book.description}"/></td>
	            <td><c:out value="${book.language}"/></td>
	            <td><c:out value="${book.numberOfPages}"/></td>
	        </tr>
	        </c:forEach>
	    </tbody>
	  </table>
	  <a href="/books/new" class="btn btn-primary mt-3">New Book</a>
	  </div>
</body>
</html>