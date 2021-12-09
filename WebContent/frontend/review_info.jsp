<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Write Review - Meta</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
    <script src="js/plugins.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
    <script src="js/ajax-mail.js"></script>
    <script src="js/custom.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="image/Bookshop_Logo.ico">
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
	                        		<h4>You already wrote a review for this book!</h4>
	                        	</div>
	                        	<div class="col-5">
					            	<h4 class="loggedCustemerName"><b><i>${loggedCustomer.fullname}</i></b></h4>
	                        	</div>
	                        	<div class="col-12 border-bottom"></div>
	                        	<div class="col-lg-3">
	                        		<br>
	                                <h4><b>${book.title}</b></h4>
	                        		<img src="data:image/jpg;base64, ${book.base64Image}"/>
	                        	</div>
	                        	
	                            <div class="col-lg-9">
	                        		<br>
	                            	<div class="form-group">
					                    <p class="d-block"><b>Your Rating</b></p>
										<div id="rateYo"></div>
				                    </div>
	                                <div class="form-group">
	                                    <label for="name"><b>Headline</b></label>
	                                    <input type="text" name="headline" class="form-control" readonly="readonly" value="${review.headline}">
	                                </div>
	                                <div class="form-group">
	                                    <label for="message"><b>Review Detail</b></label>
	                                    <textarea name="comment" cols="30" rows="10" class="form-control"
	                                     readonly="readonly">${review.comment}</textarea>
	                                </div>
	                            </div>
	                        </div>
	                    </form>
	                </div>
	            </div>
            </div>
        </main>
    </div>

	<jsp:directive.include file="footer.jsp"/>
	
    <script>
	    $(document).ready(function(){
		     $("#rateYo").rateYo({
			    starWidth: "40px",
			    fullStar: true,
			    rating: ${review.rating},
			    readOnly: true
		     });
		});
    </script>    
</body>

</html>