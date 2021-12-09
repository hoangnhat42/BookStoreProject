<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>META BOOKSHOP</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <link rel="shortcut icon" type="image/x-icon" href="image/Bookshop_Logo.ico">
</head>

<body>
    <div class="site-wrapper" id="top">
    <jsp:directive.include file="header.jsp"/>
    
        <!--=================================
        Hero Area
        ===================================== -->
        <section class="hero-area hero-slider-2">
            <div class="container">
                <div class="row align-items-lg-center">
                    <div class="col-lg-8">
                        <div class="sb-slick-slider" data-slick-setting='{
                                                                "autoplay": true,
                                                                "autoplaySpeed": 8000,
                                                                "slidesToShow": 1,
                                                                "dots":true
                                                                }'>
                            <div class="single-slide bg-image bg-position-left bg-position-lg-center" data-bg="image/bg-images/home-2-slider-1.jpg">
                                <div class="home-content text-left text-md-center pl--30 pl-md--0">
                                    <div class="row">
                                        <div class="col-lg-7 col-xl-5 col-md-6 col-sm-6">
                                            <span class="title-small">Beautifully Designed</span>
                                            <h2>INSTA</h2>
                                            <p>Cover up front of book and
                                                <br>leave summary</p>
                                            <a href="shop-grid.html" class="btn btn-outlined--primary">
                                                Shop Now
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single-slide bg-image" data-bg="image/bg-images/home-2-slider-2.jpg">
                                <div class="home-content pl--30">
                                    <div class="row">
                                        <div class="col-lg-7">
                                            <span class="title-mid">Book Mockup</span>
                                            <h2 class="h2-v2">Hardcover.</h2>
                                            <p>Cover up front of book and
                                                <br>leave summary</p>
                                            <a href="shop-grid.html" class="btn btn-outlined--primary">
                                                Shop Now
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 mt--30 mt-lg--0">
                        <div class="sb-slick-slider hero-products-group-slider product-border-reset" data-slick-setting='{
                                            "autoplay": true,
                                            "autoplaySpeed": 8000,
                                            "slidesToShow": 1,
                                            "rows":2
                                        }' data-slick-responsive='[
                                            {"breakpoint":992, "settings": {"slidesToShow": 2,"rows":2} },
                                            {"breakpoint":768, "settings": {"slidesToShow": 1} },
                                         {"breakpoint":490, "settings": {"slidesToShow": 1} }
                                    ]'>
                             
                            <c:if test="${fn:length(listNewBooks) > 0}">
		                		<c:forEach items="${listNewBooks}" var="book">
		                            <div class="single-slide">
		                                <div class="product-card card-style-list">
		                                    <div class="card-image">
		                                        <a href="view_book?id=${book.bookId}"><img src="${book.image}" alt=""></a>
		                                    </div>
		                                    <div class="product-card--body">
		                                        <div class="product-header">
		                                            <a class="author">${book.author}</a>
		                                            <h3><a href="view_book?id=${book.bookId}">${book.title}</a></h3>
		                                        </div>
		                                        <div class="price-block">
		                                            <span class="price"><fmt:formatNumber value="${book.price}" type="currency"/></span>
		                                            <del class="price-old">$<fmt:formatNumber value="${book.price * 1.25}" maxFractionDigits="2"/></del>
		                                            <span class="price-discount">-20%</span>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
                            	</c:forEach>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--=================================
        Home Features Section
        ===================================== -->
        <section class="mb--30">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-md-6 mt--30">
                        <div class="feature-box h-100">
                            <div class="icon">
                                <i class="fas fa-shipping-fast"></i>
                            </div>
                            <div class="text">
                                <h5>Free Shipping Item</h5>
                                <p> Orders over $500</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mt--30">
                        <div class="feature-box h-100">
                            <div class="icon">
                                <i class="fas fa-redo-alt"></i>
                            </div>
                            <div class="text">
                                <h5>Money Back Guarantee</h5>
                                <p>100% money back</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mt--30">
                        <div class="feature-box h-100">
                            <div class="icon">
                                <i class="fas fa-piggy-bank"></i>
                            </div>
                            <div class="text">
                                <h5>Cash On Delivery</h5>
                                <p>Lorem ipsum dolor amet</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 mt--30">
                        <div class="feature-box h-100">
                            <div class="icon">
                                <i class="fas fa-life-ring"></i>
                            </div>
                            <div class="text">
                                <h5>Help & Support</h5>
                                <p>Call us : + 0123.4567.89</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--=================================
        Promotion Section One
        ===================================== -->
        <section class="section-margin">
            <h2 class="sr-only">Promotion Section</h2>
            <div class="container">
                <div class="row space-db--30">
                    <div class="col-lg-6 mb--30">
                        <a href="" class="promo-image promo-overlay">
                            <img src="image/bg-images/promo-banner-with-text.jpg" alt="">
                        </a>
                    </div>
                    <div class="col-lg-6 mb--30">
                        <a href="" class="promo-image promo-overlay">
                            <img src="image/bg-images/promo-banner-with-text-2.jpg" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <!--=================================
        Home Slider Tab
        ===================================== -->
        <section class="section-padding">
            <h2 class="sr-only">Home Tab Slider Section</h2>
            <div class="container">
                <div class="sb-custom-tab">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="shop-tab" data-bs-toggle="tab" href="#shop" role="tab" aria-controls="shop" aria-selected="true">
                                New Books
                            </a>
                            <span class="arrow-icon"></span>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="men-tab" data-bs-toggle="tab" href="#men" role="tab" aria-controls="men" aria-selected="true">
                                Best Selling
                            </a>
                            <span class="arrow-icon"></span>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="woman-tab" data-bs-toggle="tab" href="#woman" role="tab" aria-controls="woman" aria-selected="false">
                                Most Favorite
                            </a>
                            <span class="arrow-icon"></span>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane active" id="shop" role="tabpanel" aria-labelledby="shop-tab">
                            <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider" data-slick-setting='{
                            "autoplay": true,
                            "autoplaySpeed": 8000,
                            "slidesToShow": 5,
                            "rows":2,
                            "dots":true
                        }' data-slick-responsive='[
                            {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                            {"breakpoint":768, "settings": {"slidesToShow": 2} },
                            {"breakpoint":480, "settings": {"slidesToShow": 1} },
                            {"breakpoint":320, "settings": {"slidesToShow": 1} }
                        ]'>
		                        <c:if test="${fn:length(listNewBooks) > 0}">
		                			<c:forEach items="${listNewBooks}" var="book">
		                                <div class="single-slide">
		                                    <div class="product-card">
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
		                                </div>
                                	</c:forEach>
                                </c:if>
                            </div>
                        </div>
                        <div class="tab-pane" id="men" role="tabpanel" aria-labelledby="men-tab">
                            <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider" data-slick-setting='{
                                        "autoplay": true,
                                        "autoplaySpeed": 8000,
                                        "slidesToShow": 5,
                                        "rows":2,
                                        "dots":true
                                    }' data-slick-responsive='[
                                        {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                                        {"breakpoint":768, "settings": {"slidesToShow": 2} },
                                        {"breakpoint":480, "settings": {"slidesToShow": 1} },
                                        {"breakpoint":320, "settings": {"slidesToShow": 1} }
                                    ]'>
                                <c:if test="${fn:length(listBestSellingBooks) > 0}">
		                			<c:forEach items="${listBestSellingBooks}" var="book">
		                                <div class="single-slide">
		                                    <div class="product-card">
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
		                                                <del class="price-old">$<fmt:formatNumber value="${book.price * 1.25}" maxFractionDigits="2"/></del>
		                                                <span class="price-discount">-20%</span>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
                                	</c:forEach>
                                </c:if>
                            </div>
                        </div>
                        <div class="tab-pane" id="woman" role="tabpanel" aria-labelledby="woman-tab">
                            <div class="product-slider multiple-row  slider-border-multiple-row  sb-slick-slider" data-slick-setting='{
                                        "autoplay": true,
                                        "autoplaySpeed": 8000,
                                        "slidesToShow": 5,
                                        "rows":2,
                                        "dots":true
                                    }' data-slick-responsive='[
                                        {"breakpoint":1200, "settings": {"slidesToShow": 3} },
                                        {"breakpoint":768, "settings": {"slidesToShow": 2} },
                                        {"breakpoint":480, "settings": {"slidesToShow": 1} },
                                        {"breakpoint":320, "settings": {"slidesToShow": 1} }
                                    ]'>
                                <c:if test="${fn:length(listMostFavoredBooks) > 0}">
		                			<c:forEach items="${listMostFavoredBooks}" var="book">
		                                <div class="single-slide">
		                                    <div class="product-card">
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
		                                                <del class="price-old">$<fmt:formatNumber value="${book.price * 1.25}" maxFractionDigits="2"/></del>
		                                                <span class="price-discount">-20%</span>
		                                            </div>
		                                        </div>
		                                    </div>
		                                </div>
                                	</c:forEach>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--=================================
        Home Two Column Section
        ===================================== -->
        <section class="bg-gray section-padding-top section-padding-bottom section-margin">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 mb--30 mb-lg--0">
                        <div class="home-left-sidebar">
                            <div class="single-side  bg-white">
                                <h2 class="home-sidebar-title">
                                    Special offer
                                </h2>
                                <div class="product-slider countdown-single with-countdown sb-slick-slider" data-slick-setting='{
                                        "autoplay": true,
                                        "autoplaySpeed": 8000,
                                        "slidesToShow": 1,
                                        "dots":true
                                    }' data-slick-responsive='[
                                        {"breakpoint":992, "settings": {"slidesToShow": 2} },
                                        {"breakpoint":480, "settings": {"slidesToShow": 1} }
                                    ]'>
                                    <div class="single-slide">
                                        <div class="product-card">
                                            <div class="product-header">
                                                <span class="author">
                                                    xpple
                                                </span>
                                                <h3><a href="product-details.html">Koss KPH7 Lightweight Portable
                                                        Headphone</a></h3>
                                            </div>
                                            <div class="product-card--body">
                                                <div class="card-image">
                                                    <img src="image/products/product-2.jpg" alt="">
                                                    <div class="hover-contents">
                                                        <a href="product-details.html" class="hover-image">
                                                            <img src="image/products/product-1.jpg" alt="">
                                                        </a>
                                                        <div class="hover-btns">
                                                            <a href="cart.html" class="single-btn">
                                                                <i class="fas fa-shopping-basket"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="single-btn">
                                                                <i class="fas fa-heart"></i>
                                                            </a>
                                                            <a href="compare.html" class="single-btn">
                                                                <i class="fas fa-random"></i>
                                                            </a>
                                                            <a href="#" data-bs-toggle="modal" data-bs-target="#quickModal" class="single-btn">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price-block">
                                                    <span class="price">£51.20</span>
                                                    <del class="price-old">£51.20</del>
                                                    <span class="price-discount">20%</span>
                                                </div>
                                                <div class="count-down-block">
                                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-slide">
                                        <div class="product-card">
                                            <div class="product-header">
                                                <span class="author">
                                                    Ypple
                                                </span>
                                                <h3><a href="product-details.html">Beats EP Wired On-Ear
                                                        digital Headphone-Black                    
                                                       
                                  </a></h3>
                                            </div>
                                            <div class="product-card--body">
                                                <div class="card-image">
                                                    <img src="image/products/product-2.jpg" alt="">
                                                    <div class="hover-contents">
                                                        <a href="product-details.html" class="hover-image">
                                                            <img src="image/products/product-1.jpg" alt="">
                                                        </a>
                                                        <div class="hover-btns">
                                                            <a href="cart.html" class="single-btn">
                                                                <i class="fas fa-shopping-basket"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="single-btn">
                                                                <i class="fas fa-heart"></i>
                                                            </a>
                                                            <a href="compare.html" class="single-btn">
                                                                <i class="fas fa-random"></i>
                                                            </a>
                                                            <a href="#" data-bs-toggle="modal" data-bs-target="#quickModal" class="single-btn">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price-block">
                                                    <span class="price">£51.20</span>
                                                    <del class="price-old">£51.20</del>
                                                    <span class="price-discount">20%</span>
                                                </div>
                                                <div class="count-down-block">
                                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-slide">
                                        <div class="product-card">
                                            <div class="product-header">
                                                <span class="author">
                                                    Kpple
                                                </span>
                                                <h3><a href="product-details.html">Beats Solo2 Solo 2 Wired On-Ear
                                                        Headphone</a></h3>
                                            </div>
                                            <div class="product-card--body">
                                                <div class="card-image">
                                                    <img src="image/products/product-3.jpg" alt="">
                                                    <div class="hover-contents">
                                                        <a href="product-details.html" class="hover-image">
                                                            <img src="image/products/product-2.jpg" alt="">
                                                        </a>
                                                        <div class="hover-btns">
                                                            <a href="cart.html" class="single-btn">
                                                                <i class="fas fa-shopping-basket"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="single-btn">
                                                                <i class="fas fa-heart"></i>
                                                            </a>
                                                            <a href="compare.html" class="single-btn">
                                                                <i class="fas fa-random"></i>
                                                            </a>
                                                            <a href="#" data-bs-toggle="modal" data-bs-target="#quickModal" class="single-btn">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price-block">
                                                    <span class="price">£51.20</span>
                                                    <del class="price-old">£51.20</del>
                                                    <span class="price-discount">20%</span>
                                                </div>
                                                <div class="count-down-block">
                                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-slide">
                                        <div class="product-card">
                                            <div class="product-header">
                                                <span class="author">
                                                    Zpple
                                                </span>
                                                <h3><a href="product-details.html">3 Ways To Have (A) More Appealing
                                                        BOOK</a></h3>
                                            </div>
                                            <div class="product-card--body">
                                                <div class="card-image">
                                                    <img src="image/products/product-5.jpg" alt="">
                                                    <div class="hover-contents">
                                                        <a href="product-details.html" class="hover-image">
                                                            <img src="image/products/product-4.jpg" alt="">
                                                        </a>
                                                        <div class="hover-btns">
                                                            <a href="cart.html" class="single-btn">
                                                                <i class="fas fa-shopping-basket"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="single-btn">
                                                                <i class="fas fa-heart"></i>
                                                            </a>
                                                            <a href="compare.html" class="single-btn">
                                                                <i class="fas fa-random"></i>
                                                            </a>
                                                            <a href="#" data-bs-toggle="modal" data-bs-target="#quickModal" class="single-btn">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price-block">
                                                    <span class="price">£51.20</span>
                                                    <del class="price-old">£51.20</del>
                                                    <span class="price-discount">20%</span>
                                                </div>
                                                <div class="count-down-block">
                                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-slide">
                                        <div class="product-card">
                                            <div class="product-header">
                                                <span class="author">
                                                    Rpple
                                                </span>
                                                <h3><a href="product-details.html">In 10 Minutes, I'll Give You The
                                                        Truth About</a></h3>
                                            </div>
                                            <div class="product-card--body">
                                                <div class="card-image">
                                                    <img src="image/products/product-6.jpg" alt="">
                                                    <div class="hover-contents">
                                                        <a href="product-details.html" class="hover-image">
                                                            <img src="image/products/product-4.jpg" alt="">
                                                        </a>
                                                        <div class="hover-btns">
                                                            <a href="cart.html" class="single-btn">
                                                                <i class="fas fa-shopping-basket"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="single-btn">
                                                                <i class="fas fa-heart"></i>
                                                            </a>
                                                            <a href="compare.html" class="single-btn">
                                                                <i class="fas fa-random"></i>
                                                            </a>
                                                            <a href="#" data-bs-toggle="modal" data-bs-target="#quickModal" class="single-btn">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price-block">
                                                    <span class="price">£51.20</span>
                                                    <del class="price-old">£51.20</del>
                                                    <span class="price-discount">20%</span>
                                                </div>
                                                <div class="count-down-block">
                                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-slide">
                                        <div class="product-card">
                                            <div class="product-header">
                                                <span class="author">
                                                    Bpple
                                                </span>
                                                <h3><a href="product-details.html">Apple iPad with Retina Display
                                                        MD510LL/A</a></h3>
                                            </div>
                                            <div class="product-card--body">
                                                <div class="card-image">
                                                    <img src="image/products/product-8.jpg" alt="">
                                                    <div class="hover-contents">
                                                        <a href="product-details.html" class="hover-image">
                                                            <img src="image/products/product-7.jpg" alt="">
                                                        </a>
                                                        <div class="hover-btns">
                                                            <a href="cart.html" class="single-btn">
                                                                <i class="fas fa-shopping-basket"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="single-btn">
                                                                <i class="fas fa-heart"></i>
                                                            </a>
                                                            <a href="compare.html" class="single-btn">
                                                                <i class="fas fa-random"></i>
                                                            </a>
                                                            <a href="#" data-bs-toggle="modal" data-bs-target="#quickModal" class="single-btn">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price-block">
                                                    <span class="price">£51.20</span>
                                                    <del class="price-old">£51.20</del>
                                                    <span class="price-discount">20%</span>
                                                </div>
                                                <div class="count-down-block">
                                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="single-slide">
                                        <div class="product-card">
                                            <div class="product-header">
                                                <span class="author">
                                                    Gaple
                                                </span>
                                                <h3><a href="product-details.html">5 Ways To Get Through To Your
                                                        BOOK</a></h3>
                                            </div>
                                            <div class="product-card--body">
                                                <div class="card-image">
                                                    <img src="image/products/product-13.jpg" alt="">
                                                    <div class="hover-contents">
                                                        <a href="product-details.html" class="hover-image">
                                                            <img src="image/products/product-11.jpg" alt="">
                                                        </a>
                                                        <div class="hover-btns">
                                                            <a href="cart.html" class="single-btn">
                                                                <i class="fas fa-shopping-basket"></i>
                                                            </a>
                                                            <a href="wishlist.html" class="single-btn">
                                                                <i class="fas fa-heart"></i>
                                                            </a>
                                                            <a href="compare.html" class="single-btn">
                                                                <i class="fas fa-random"></i>
                                                            </a>
                                                            <a href="#" data-bs-toggle="modal" data-bs-target="#quickModal" class="single-btn">
                                                                <i class="fas fa-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="price-block">
                                                    <span class="price">£51.20</span>
                                                    <del class="price-old">£51.20</del>
                                                    <span class="price-discount">20%</span>
                                                </div>
                                                <div class="count-down-block">
                                                    <div class="product-countdown" data-countdown="01/05/2020"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single-side">
                                <a href="#" class="promo-image promo-overlay">
                                    <img src="image/bg-images/promo-banner-small-with-text.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <div class="home-right-block">
                            <div class="single-block bg-white">
                                <div class="section-title mt-0">
                                    <h2>${firstCategoryName}</h2>
                                </div>
                                <div class="product-slider product-list-slider sb-slick-slider slider-border-single-row" data-slick-setting='{
                                                                    "autoplay": true,
                                                                    "autoplaySpeed": 8000,
                                                                    "slidesToShow":2,
                                                                    "dots":true
                                                                }' data-slick-responsive='[
                                                                    {"breakpoint":1200, "settings": {"slidesToShow": 2} },
                                                                    {"breakpoint":992, "settings": {"slidesToShow": 2} },
                                                                    {"breakpoint":768, "settings": {"slidesToShow": 2} },
                                                                    {"breakpoint":575, "settings": {"slidesToShow": 1} },
                                                                    {"breakpoint":490, "settings": {"slidesToShow": 1} }
                                                                ]'>
                                    
                                    <c:if test="${fn:length(firstCategoryBooks) > 0}">
			                			<c:forEach items="${firstCategoryBooks}" var="book">
		                                    <div class="single-slide">
		                                        <div class="product-card card-style-list">
		                                            <div class="card-image">
		                                                <a href="view_book?id=${book.bookId}"><img src="${book.image}" alt=""></a>
		                                            </div>
		                                            <div class="product-card--body">
		                                                <div class="product-header">
		                                                    <span class="author">${book.author}</span>
		                                                    <h3><a href="view_book?id=${book.bookId}">${book.title}</a></h3>
		                                                </div>
		                                                <div class="price-block">
		                                                    <span class="price"><fmt:formatNumber value="${book.price}" type="currency"/></span>
		                                                    <del class="price-old">$<fmt:formatNumber value="${book.price * 1.25}" maxFractionDigits="2"/></del>
		                                                    <span class="price-discount">-20%</span>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div>
		                               	</c:forEach>
		                           	</c:if>
                                </div>
                            </div>
                            
                            <div class="single-block bg-white">
                                <div class="section-title mt-0">
                                    <h2>${secondCategoryName}</h2>
                                </div>
                                <div class="product-slider sb-slick-slider slider-border-single-row" data-slick-setting='{
                                        
                                        "autoplaySpeed": 8000,
                                        "slidesToShow": 3,
                                        "dots":true
                                    }' data-slick-responsive='[
                                        {"breakpoint":992, "settings": {"slidesToShow": 2} },
                                        {"breakpoint":768, "settings": {"slidesToShow": 2} },
                                        {"breakpoint":480, "settings": {"slidesToShow": 1} },
                                        {"breakpoint":320, "settings": {"slidesToShow": 1} }
                                    ]'>
                                    
                                    <c:if test="${fn:length(firstCategoryBooks) > 0}">
			                			<c:forEach items="${firstCategoryBooks}" var="book">
		                                    <div class="single-slide">
		                                        <div class="product-card">
		                                            <div class="product-header">
		                                                <span class="author">${book.author}</span>
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
		                                                    <del class="price-old">$<fmt:formatNumber value="${book.price * 1.25}" maxFractionDigits="2"/></del>
		                                                    <span class="price-discount">-20%</span>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </div>
                                    	</c:forEach>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--=================================
        Promotion Section Two
        ===================================== -->
        <section class="section-margin">
            <h2 class="sr-only">Promotion Section</h2>
            <div class="container">
                <div class="promo-wrapper promo-type-four">
                    <a href="#" class="promo-image promo-overlay bg-image" data-bg="image/bg-images/promo-banner-contained.jpg">
                        <!-- <img src="image/bg-images/promo-banner-contained.jpg" alt="" class="w-100 h-100"> -->
                    </a>
                    <div class="promo-text w-100 justify-content-center justify-content-md-left">
                        <div class="row w-100">
                            <div class="col-lg-8">
                                <div class="promo-text-inner">
                                    <h2>Buy 3. Get Free 1.</h2>
                                    <h3>50% off for selected products in Pustok.</h3>
                                    <a href="#" class="btn btn-outlined--red-faded">See More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--=================================
        Footer
        ===================================== -->
    </div>
    
    
	<jsp:directive.include file="footer.jsp"/>
    
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <script src="js/plugins.js"></script>
    <script src="js/ajax-mail.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>