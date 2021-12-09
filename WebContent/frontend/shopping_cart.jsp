<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="js/plugins.js"></script>
   	<script src="js/jquery.validate.min.js"></script>
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
                            <li class="breadcrumb-item active">Cart</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <!-- Cart Page Start -->
        <main class="cart-page-main-block inner-page-sec-padding-bottom">
            <div class="cart_area cart-area-padding  ">
                <div class="container">
                    <div class="page-section-title">
                        <h1>Shopping Cart</h1>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <form action="update_cart" method="post" id="cartForm" class="">
                                <!-- Cart Table -->
                                <div class="cart-table table-responsive mb--40">
                                    <table class="table">
                                        <!-- Head Row -->
                                        <thead>
                                            <tr>
                                                <th class="pro-remove"></th>
                                                <th class="pro-thumbnail">Image</th>
                                                <th class="pro-title">Product</th>
                                                <th class="pro-price">Price</th>
                                                <th class="pro-quantity">Quantity</th>
                                                <th class="pro-subtotal">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:set var="cart" value="${sessionScope['cart']}"/>
                                        	 
                                        	 <c:if test="${cart.totalItems == 0}">
	                                        	<tr>
	                                        		<td colspan="6" class="pro-title"><h5><i><b>There are no items in your cart.</b></i></h5></td>
	                                        	</tr>
                                        	</c:if>
                                        	
                                        	<c:if test="${cart.totalItems > 0}">
                                        		<c:forEach items="${cart.items}" var="item" varStatus="status">
		                                            <!-- Product Row -->
		                                            <tr>
		                                                <td class="pro-remove"><a href="remove_from_cart?book_id=${item.key.bookId}"><i class="far fa-trash-alt"></i></a>
		                                                </td>
		                                                <td class="pro-thumbnail"><a href="view_book?id=${item.key.bookId}"><img
																	src="${item.key.image}" alt="Product"></a></td>
		                                                <td class="pro-title"><a href="view_book?id=${item.key.bookId}">${item.key.title}</a></td>
		                                                <td class="pro-price"><span><fmt:formatNumber value="${item.key.price}" type="currency" /></span></td>
		                                                <td class="pro-quantity">
		                                                    <div class="pro-qty">
		                                                        <div class="count-input-block">
		                                                        	<input type="hidden" name="bookId" value="${item.key.bookId}"/>
		                                                            <input type="number" class="form-control text-center" name="quantity${status.index + 1}" value="${item.value}"/>
		                                                        </div>
		                                                    </div>
		                                                </td>
		                                                <td class="pro-subtotal"><span><fmt:formatNumber value="${item.value * item.key.price}" type="currency" /></span></td>
		                                            </tr>
	                                            </c:forEach>
                                            
	                                            <!-- Discount Row  -->
	                                            <tr>
	                                                <td colspan="6" class="actions">
	                                                    <div class="update-block text-right">
	                                                        <input type="button" class="btn btn-outlined" name="update_cart" id="clearCart" value="Clear cart">
	                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                                                        <input type="submit" class="btn btn-outlined" name="update_cart" value="Update cart">
	                                                    </div>
	                                                </td>
	                                            </tr>
                                            </c:if>
                                        </tbody>
                                    </table>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cart-section-2">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-12 mb--30 mb-lg--0">
                            <!-- slide Block 5 / Normal Slider -->
                            <div class="cart-block-title">
                                <h2>YOU MAY BE INTERESTED IN…</h2>
                            </div>
                            <div class="product-slider sb-slick-slider" data-slick-setting='{
							          "autoplay": true,
							          "autoplaySpeed": 8000,
							          "slidesToShow": 2
									  }' data-slick-responsive='[
                {"breakpoint":992, "settings": {"slidesToShow": 2} },
                {"breakpoint":768, "settings": {"slidesToShow": 3} },
                {"breakpoint":575, "settings": {"slidesToShow": 2} },
                {"breakpoint":480, "settings": {"slidesToShow": 1} },
                {"breakpoint":320, "settings": {"slidesToShow": 1} }
            ]'>
            					
            					<c:forEach var="book" items="${listBooks}" varStatus="status">
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
                            </div>
                        </div>
                        <!-- Cart Summary -->
                        <div class="col-lg-6 col-12 d-flex">
                            <div class="cart-summary">
                                <div class="cart-summary-wrap">
                                    <h4><span>Cart Summary</span></h4>
                                    <p>Sub Total <span class="text-primary"><fmt:formatNumber value="${cart.totalAmount}" type="currency" /></span></p>
                                    <p>Shipping Cost <span class="text-primary">
                                    	<c:if test="${cart.totalItems == 0}">$0.00</c:if>
                                    	<c:if test="${cart.totalItems > 0}">$2.99</c:if>
                                    </span></p>
                                    <h2>Grand Total <span class="text-primary">
                                    	<c:if test="${cart.totalItems == 0}"><fmt:formatNumber value="${cart.totalAmount}" type="currency" /></c:if>
                                    	<c:if test="${cart.totalItems > 0}"><fmt:formatNumber value="${cart.totalAmount+2.99}" type="currency" /></c:if>
                                    </span></h2>
                                </div>
                                <c:if test="${cart.totalItems > 0}">
	                                <div class="cart-summary-button">
	                                    <a href="checkout" class="checkout-btn c-btn btn--primary">Checkout</a>
	                                </div>
                                </c:if>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- Cart Page End -->
    </div>
	
	<jsp:directive.include file="footer.jsp"/>
	
	<script>
		$(document).ready(function(){
	   	 	$("#clearCart").click(function(){
		   		 window.location = "clear_cart";
		   		}); 
		   	 
			$("#cartForm").validate({
				rules: {
					<c:forEach items="${cart.items}" var="item" varStatus="status">
					       quantity${status.index + 1}: {required: true, digits: true, min: 1},
					</c:forEach>
				},
				messages: {
					<c:forEach items="${cart.items}" var="item" varStatus="status">
				       quantity${status.index + 1}: {
				    	   required: "Please enter quantity",
				    	   digits: "Quantity must be a number",
				    	   min: "Quantity must be greater than 0"
				    	   },
				    </c:forEach>
				}
			});
		});
	</script>
</body>

</html>