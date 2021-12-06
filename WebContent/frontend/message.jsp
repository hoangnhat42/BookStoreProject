<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   	<title>Bookstore - Online Bookstore</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" href="css/plugins.css" />
    <link rel="stylesheet" href="css/main.css" />
   	<link rel="stylesheet" href="css/style.css" >
   	<script src="js/plugins.js"></script>
    <script src="js/ajax-mail.js"></script>
    <script src="js/custom.js"></script>
</head>
<body>
	<div class="site-wrapper" id="top">
    	<jsp:directive.include file="header.jsp"/>
    	<br><br>
		<div class="border-bottom" align="center">
			<h3>${message}</h3>
	    </div>
	    <br><br>
	</div>
    <jsp:directive.include file="footer.jsp"/>
</body>
</html>