<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Pustok - Book Store HTML Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
    <!-- Use Minified Plugins Version For Fast Page Load -->
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
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}">Home</a></li>
                            <li class="breadcrumb-item active">Results for "${keyword}"</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <main class="inner-page-sec-padding-bottom">
            <div class="container">
                <div class="shop-toolbar mb--30">
                    <div class="row align-items-center">
                        <div class="col-lg-1 col-md-1 col-sm-1">
                            <!-- Product View Mode -->
                            <div class="product-view-mode">
                            	<a href="#" class="sorting-btn" data-target="grid-four">
									<span class="grid-four-icon">
										<i class="fas fa-grip-vertical"></i><i class="fas fa-grip-vertical"></i>
									</span>
								</a>
                                <a href="#" class="sorting-btn active" data-target="list "><i class="fas fa-list"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-11 col-md-11 col-sm-11 mt--10 mt-md--0">
                            <div class="sorting-selection">
                                <span>Showing 1 to 9 of 14 (2 Pages)</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="shop-toolbar d-none">
                    <div class="row align-items-center">
                        <div class="col-lg-1 col-md-1 col-sm-1">
                            <!-- Product View Mode -->
                            <div class="product-view-mode">
                                <a href="#" class="sorting-btn" data-target="list "><i class="fas fa-list"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-11 col-md-11 col-sm-11  mt--10 mt-md--0">
                            <div class="sorting-selection">
                                <span>Showing 1 to 9 of 14 (2 Pages)</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="shop-product-wrap list with-pagination row space-db--30 shop-border">
                
                	<c:if test="${fn:length(result) > 0}">
                		<c:forEach items="${result}" var="book">
		                    <div class="col-lg-4 col-sm-6">
		                        <div class="product-card card-style-list">
		                        	<div class="product-grid-content">
		                                <div class="product-header">
		                                    <a class="author">${book.author}</a>
		                                    <h3><a href="view_book?id=${book.bookId}">${book.title}</a></h3>
		                                </div>
		                                <div class="product-card--body">
		                                    <div class="card-image">
		                                        <img src="${book.image}" alt="">
		                                        <div class="hover-contents">
		                                            <a href="view_book?id=${book.bookId}" class="hover-image">
														<img src="${book.image}" alt="">
													</a>
		                                            <div class="hover-btns">
		                                                <a href="add_to_cart?book_id=${book.bookId}" class="single-btn">
															<i class="fas fa-shopping-basket"></i>
														</a>
		                                            </div>
		                                        </div>
		                                    </div>
		                                    <div class="price-block">
		                                        <span class="price"><fmt:formatNumber value="${book.price}" type="currency"/></span>
		                                        <del class="price-old">$<fmt:formatNumber value="${book.price * 1.2}" maxFractionDigits="2"/></del>
		                                        <span class="price-discount">-20%</span>
		                                    </div>
		                                </div>
		                            </div>
		                        
		                            <div class="product-list-content">
		                                <div class="card-image">
		                                    <a href="view_book?id=${book.bookId}"><img src="${book.image}"></a>
		                                </div>
		                                <div class="product-card--body">
		                                    <div class="product-header">
		                                        <a class="author">${book.author}</a>
		                                        <h3><a href="view_book?id=${book.bookId}" tabindex="0">${book.title}</a></h3>
		                                    </div>
		                                    <div class="price-block">
		                                        <span class="price"><fmt:formatNumber value="${book.price}" type="currency" /></span>
		                                        <del class="price-old">$<fmt:formatNumber value="${book.price * 1.2}" maxFractionDigits="2"/></del>
		                                        <span class="price-discount">-20%</span>
		                                    </div>
		                                    <div class="rating-block">
		                                        <jsp:directive.include file="book_rating.jsp" />
		                                    </div>
		                                    <div class="btn-block">
		                                        <a href="add_to_cart?book_id=${book.bookId}" class="btn btn-outlined">Add To Cart</a>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </div>
	                    </c:forEach>
                    </c:if>
                </div>
                <!-- Pagination Block -->
                <div class="row pt--30">
                    <div class="col-md-12">
                        <div class="pagination-block">
                            <ul class="pagination-btns flex-center">
                                <li><a href="" class="single-btn prev-btn ">|<i class="zmdi zmdi-chevron-left"></i> </a>
                                </li>
                                <li><a href="" class="single-btn prev-btn "><i class="zmdi zmdi-chevron-left"></i> </a>
                                </li>
                                <li class="active"><a href="" class="single-btn">1</a></li>
                                <li><a href="" class="single-btn">2</a></li>
                                <li><a href="" class="single-btn">3</a></li>
                                <li><a href="" class="single-btn">4</a></li>
                                <li><a href="" class="single-btn next-btn"><i class="zmdi zmdi-chevron-right"></i></a>
                                </li>
                                <li><a href="" class="single-btn next-btn"><i class="zmdi zmdi-chevron-right"></i>|</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

	<jsp:directive.include file="footer.jsp"/>

</body>

</html>