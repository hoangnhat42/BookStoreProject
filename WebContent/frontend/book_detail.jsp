<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${book.title} - Meta</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <script src="js/plugins.js"></script>
    <script src="js/ajax-mail.js"></script>
    <script src="js/custom.js"></script>
    <link rel="shortcut icon" type="image/x-icon" href="image/Bookshop_Logo.ico">
</head>

<body>
	<div class="site-wrapper" id="top">
    <jsp:directive.include file="header.jsp"/>
    
        <section class="breadcrumb-section">
            <h2 class="sr-only">Site Breadcrumb</h2>
            <div class="container">
                <div class="breadcrumb-contents">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Home</a></li>
                            <li class="breadcrumb-item active">Book Details</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <main class="inner-page-sec-padding-bottom">
            <div class="container">
                <div class="row  mb--60">
                    <div class="col-lg-5 mb--30">
                        <!-- Product Details Slider Big Image-->
                        <div class="product-details-slider sb-slick-slider arrow-type-two" data-slick-setting='{
              "slidesToShow": 1,
              "arrows": false,
              "fade": true,
              "draggable": false,
              "swipe": false,
              "asNavFor": ".product-slider-nav"
              }'>
                            <div class="single-slide">
                                <img src="${book.image}" alt="">
                            </div>
                            <!-- <div class="single-slide">
                                <img src="image/products/product-details-2.jpg" alt="">
                            </div>
                            <div class="single-slide">
                                <img src="image/products/product-details-3.jpg" alt="">
                            </div>
                            <div class="single-slide">
                                <img src="image/products/product-details-4.jpg" alt="">
                            </div>
                            <div class="single-slide">
                                <img src="image/products/product-details-5.jpg" alt="">
                            </div> -->
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="product-details-info pl-lg--30 ">
                            <h3 class="product-title">${book.title} - ${book.author}</h3>
                            <!-- <ul class="list-unstyled">
                                <li>Ex Tax: <span class="list-value"> £60.24</span></li>
                                <li>Brands: <a href="#" class="list-value font-weight-bold"> Canon</a></li>
                                <li>Product Code: <span class="list-value"> model1</span></li>
                                <li>Reward Points: <span class="list-value"> 200</span></li>
                                <li>Availability: <span class="list-value"> In Stock</span></li>
                            </ul> -->
                            <div class="price-block">
                                <span class="price-new"><fmt:formatNumber value="${book.price}" type="currency"/></span>
                                <del class="price-old">$<fmt:formatNumber value="${book.price * 1.25}" maxFractionDigits="2"/></del>
                                <span class="price-discount">-20%</span>
                            </div>
                            <div class="rating-widget">
                                <div class="rating-block">
                                    <!-- <span class="fas fa-star star_on"></span>
                                    <span class="fas fa-star star_on"></span>
                                    <span class="fas fa-star star_on"></span>
                                    <span class="fas fa-star star_half"></span>
                                    <span class="fas fa-star "></span> -->
                                    <jsp:directive.include file="book_rating.jsp" />
                                </div>
                                <div class="review-widget">
                                    <a>(${fn:length(book.reviews)} Reviews)</a> <span>|</span>
                                    <a href="write_review?book_id=${book.bookId}">Write a review</a>
                                </div>
                            </div>
                            <!-- <article class="product-details-article">
                                <h4 class="sr-only">Product Summery</h4>
                                <p>Long printed dress with thin adjustable straps. V-neckline and wiring under the Dust with ruffles at the bottom of the dress.
                                </p>
                            </article> -->
                            <div class="add-to-cart-row">
                                <div class="add-cart-btn">
                                    <button class="btn btn-outlined--primary" id="buttonAddToCart"><span class="plus-icon">+</span>Add to
                                        Cart</button>
                                </div>
                            </div>
                            <!-- <div class="compare-wishlist-row">
                                <a href="" class="add-link"><i class="fas fa-heart"></i>Add to Wish List</a>
                                <a href="" class="add-link"><i class="fas fa-random"></i>Add to Compare</a>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="sb-custom-tab review-tab section-padding">
                    <ul class="nav nav-tabs nav-style-2" id="myTab2" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="tab1" data-bs-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">
                                DESCRIPTION
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="tab2" data-bs-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="true">
                                REVIEWS (${fn:length(book.reviews)})
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content space-db--20" id="myTabContent">
                        <div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab1">
                            <article class="review-article">
                                <h1 class="sr-only">Tab Article</h1>
                                ${book.description}
                            </article>
                        </div>
                        <div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab2">
                            <div class="review-wrapper">
                                <h2 class="title-lg mb--20">${fn:length(book.reviews)} REVIEWS</h2>
                                <c:forEach items="${book.reviews}" var="review">
                                <div class="review-comment mb--20">
                                    <div class="avatar">
                                        <img src="image/icon/author-logo.png" alt="">
                                    </div>
                                    <div class="text">
                                        <div class="rating-block mb--15">
                                        <c:forTokens items="${review.stars}" delims="," var="star">
                                           <c:if test="${star eq 'on'}">
                                                <span class="ion-android-star-outline star_on"></span>
                                           </c:if>
                                           <c:if test="${star eq 'off'}">
                                                <span class="ion-android-star-outline"></span>
                                           </c:if>
                                      </c:forTokens>
                                      - <b>${review.headline}</b>
                                        </div>
                                        <h6 class="author">${review.customer.fullname} – <span class="font-weight-400">${review.reviewTime}</span>
                                        </h6>
                                        <p>${review.comment}</p>
                                    </div>
                                </div>
                                </c:forEach>
                         
                                <div class="submit-btn">
                                    <button id="buttonWriteReview" class="btn btn-black">Add a review</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- <div class="tab-product-details">
  <div class="brand">
    <img src="image/others/review-tab-product-details.jpg" alt="">
  </div>
  <h5 class="meta">Reference <span class="small-text">demo_5</span></h5>
  <h5 class="meta">In stock <span class="small-text">297 Items</span></h5>
  <section class="product-features">
    <h3 class="title">Data sheet</h3>
    <dl class="data-sheet">
      <dt class="name">Compositions</dt>
      <dd class="value">Viscose</dd>
      <dt class="name">Styles</dt>
      <dd class="value">Casual</dd>
      <dt class="name">Properties</dt>
      <dd class="value">Maxi Dress</dd>
    </dl>
  </section>
</div> -->
            </div>
            <!--=================================
    RELATED PRODUCTS BOOKS
===================================== -->
            <section class="">
                <div class="container">
                    <div class="section-title section-title--bordered">
                        <h2>RELATED BOOKS</h2>
                    </div>
                    <div class="product-slider sb-slick-slider slider-border-single-row" data-slick-setting='{
                "autoplay": true,
                "autoplaySpeed": 8000,
                "slidesToShow": 4,
                "dots":true
            }' data-slick-responsive='[
                {"breakpoint":1200, "settings": {"slidesToShow": 4} },
                {"breakpoint":992, "settings": {"slidesToShow": 3} },
                {"breakpoint":768, "settings": {"slidesToShow": 2} },
                {"breakpoint":480, "settings": {"slidesToShow": 1} }
            ]'>
            			<c:forEach items="${relatedBooks}" var="relatedBook">
	                        <div class="single-slide">
	                            <div class="product-card">
	                                <div class="product-header">
	                                    <a class="author">
	                                        ${relatedBook.author}
	                                    </a>
	                                    <h3><a href="view_book?id=${relatedBook.bookId}">${relatedBook.title}</a></h3>
	                                </div>
	                                <div class="product-card--body">
	                                    <div class="card-image">
	                                        <img src="${relatedBook.image}" alt="">
	                                        <div class="hover-contents">
	                                            <a class="hover-image">
	                                                <img src="${relatedBook.image}" alt="">
	                                            </a>
	                                            <div class="hover-btns">
	                                                <a href="add_to_cart?book_id=${relatedBook.bookId}" class="single-btn">
	                                                    <i class="fas fa-shopping-basket"></i>
	                                                </a>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="price-block">
	                                        <span class="price"><fmt:formatNumber value="${relatedBook.price}" type="currency"/></span>
	                                        <del class="price-old">$<fmt:formatNumber value="${relatedBook.price * 1.25}" maxFractionDigits="2"/></del>
	                                        <span class="price-discount">-20%</span>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
                        </c:forEach>
                        
                        
                        
        </main>
    </div>

	<jsp:directive.include file="footer.jsp"/>
	
    <script>
	    $(document).ready(function(){
	        $("#buttonWriteReview").click(function(){
	        	window.location = "write_review?book_id=" + ${book.bookId};
		    });
	        
	        $("#buttonAddToCart").click(function(){
	        	window.location = "add_to_cart?book_id=" + ${book.bookId};
		    });
	    });
    </script>    
</body>

</html>