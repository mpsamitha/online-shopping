<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap core CSS -->
<link href="${css}/bootstrap_edit.min.css" rel="stylesheet">

<!-- font-awesome this is my add -->
<link href="${css}/font-awesome.min.css" rel="stylesheet">
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">-->

<!-- Bootstrap Readable Theme CSS -->
<link href="${css}/bootstrap-readable-theme.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${css}/myapp.css" rel="stylesheet">

<title>Online Shopping - ${title}</title>

</head>

<body>

	<div class='wrapper'>

		<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
			<div class="container">
				<a class="navbar-brand" href="${contextRoot}/home">Home</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarResponsive" aria-controls="navbarResponsive"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>	
			</div>
		</nav>

		<div class="content">
		
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
					
						<div class="jumbotron">
							
							<h1>${errorTitle}</h1>
							<hr/>
							
							<blockquote style="word-wrap:break-word">
								${errorDescription}
							</blockquote>
							
						</div>
					
					</div>
				</div>
			</div>
		
		</div>

	

	<!-- Footer -->
	<%@include file="./shared/footer.jsp"%>


	</div>
</body>

</html>