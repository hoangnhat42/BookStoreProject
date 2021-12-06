<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   	<title>Review Posted - Online Bookstore</title>
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
	     <main class="inner-page-sec-padding-bottom">
            <div class="container">
	            <div class="review-wrapper">
	                
	                <div class="rating-row pt-2">
	                    <form id="reviewForm" action="submit_review" method="post" class="mt--15 site-form ">
	                        <div class="row">
	                        	<div class="col-7">
	                        		<h4>Your review has been posted. Thank you!</h4>
	                        	</div>
	                        	<div class="col-5">
					            	<h4 class="loggedCustemerName"><b><i>${loggedCustomer.fullname}</i></b></h4>
	                        	</div>
	                        	<div class="col-12 border-bottom"></div>
	                        	<div class="col-lg-12">
	                        		<br>
	                                <h4><b>${book.title}</b></h4>
	                        	</div>
	                        </div>
	                    </form>
	                </div>
	            </div>
            </div>
        </main>
	</div>
    <jsp:directive.include file="footer.jsp"/>
</body>
</html>