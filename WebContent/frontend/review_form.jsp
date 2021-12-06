<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${book.title} - Online Books Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.css">
    <script src="js/plugins.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.2/jquery.rateyo.min.js"></script>
    <script src="js/jquery.validate.min.js"></script>
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
	                        	<div class="col-lg-3">
	                                    <h4><b>${book.title}</b></h4>
	                        		<img src="data:image/jpg;base64, ${book.base64Image}"/>
	                        	</div>
	                        	
	                            <div class="col-lg-9">
	                            	<div class="form-group">
					                    <p class="d-block"><b>Your Rating</b></p>
										<div id="rateYo"></div>
				                       	<input type="hidden" id="rating" name="rating"/>
				                       	<input type="hidden" name="book_id" value="${book.bookId}"/>
				                    </div>
	                                <div class="form-group">
	                                    <label for="name"><b>Headline</b></label>
	                                    <input type="text" name="headline" class="form-control" placeholder="Headline or summary for your review...">
	                                </div>
	                                <div class="form-group">
	                                    <label for="message"><b>Review Detail</b></label>
	                                    <textarea name="comment" cols="30" rows="10" class="form-control"
	                                     placeholder="Write your review details..."></textarea>
	                                </div>
	                                <div class="submit-btn">
	                                    <button type="submit" class="btn btn-black">Post Comment</button>
	                                    &nbsp;&nbsp;
                       					<button id="buttonCancel" class="btn btn-black">Cancel</button>
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
	   	 $("#buttonCancel").click(function(){
	   			history.go(-1);
	   		});
	   	 
		     $("#reviewForm").validate({
			   rules: {
			 	headline:"required",
				comment:"required"
			   },
			   messages: {
				headline:"*Please enter headline",
				comment:"*Please enter review details"
			   }
		    });
		 
		     $("#rateYo").rateYo({
			    starWidth: "40px",
			    fullStar: true,
			    onSet: function (rating, rateYoInstance) {
			    	$("#rating").val(rating);
			    }
			});
		});
    </script>    
</body>

</html>