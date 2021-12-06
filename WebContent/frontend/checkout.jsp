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
    <link rel="shortcut icon" type="image/x-icon" href="image/favicon.ico">
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
                            <li class="breadcrumb-item active">Checkout</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <main id="content" class="page-section inner-page-sec-padding-bottom space-db--20">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Checkout Form s-->
                        <div class="checkout-form">
	                        <form id="orderForm" action="place_order" method="post">
	                            <div class="row row-40">
	                                <div class="col-12">
	                                    <h1 class="quick-title">Checkout</h1>
	                                    <!-- Slide Down Trigger  -->
	                                    <div class="checkout-quick-box">
	                                        <p><i class="far fa-sticky-note"></i>Have a coupon? <a href="javascript:" class="slide-trigger" data-target="#quick-cupon">
													Click here to enter your code</a></p>
	                                    </div>
	                                    <!-- Slide Down Blox ==> Cupon Box -->
	                                    <div class="checkout-slidedown-box" id="quick-cupon">
	                                        <form action="./">
	                                            <div class="checkout_coupon">
	                                                <input type="text" class="mb-0" placeholder="Coupon Code">
	                                                <a href="" class="btn btn-outlined">Apply coupon</a>
	                                            </div>
	                                        </form>
	                                    </div>
	                                </div>
	                            	<div class="col-lg-7 mb--20">
	                                    <!-- Billing Address -->
	                                    <div id="billing-form" class="mb-40">
	                                        <h4 class="checkout-title">Recipient Information</h4>
	                                        <div class="row">
		                                    	<c:if test="${message != null}">
		                                        	<div class="col-12 mb--20">
		                                                <span class="font-weight-bold error"><i>*${message}</i></span>
		                                            </div>
										    	</c:if>
	                                            <div class="col-md-6 col-12 mb--20">
	                                                <label>First Name*</label>
	                                                <input type="text" name="firstname" id="firstname" value="${loggedCustomer.firstname}" placeholder="First Name">
	                                            </div>
	                                            <div class="col-md-6 col-12 mb--20">
	                                                <label>Last Name*</label>
	                                                <input type="text" name="lastname" id="lastname" value="${loggedCustomer.lastname}" placeholder="Last Name">
	                                            </div>
	                                            <div class="col-12 mb--20">
	                                                <label>Address*</label>
	                                                <input type="text" name="address1" id="address1" value="${loggedCustomer.addressLine1}" placeholder="Address line 1">
	                                                <input type="text" name="address2" id="address2" value="${loggedCustomer.addressLine2}" placeholder="Address line 2">
	                                            </div>
	                                            <div class="col-md-6 col-12 mb--20">
	                                                <label>Phone no*</label>
	                                                <input type="text" name="phone" id="phone" value="${loggedCustomer.phone}" placeholder="Phone number">
	                                            </div>
	                                            <div class="col-md-6 col-12 mb--20">
	                                                <label>Country*</label>
	                                                <select class="nice-select" name="country" id="country">
													    <c:forEach items="${mapCountries}" var="country">
													       <option value="${country.value}" <c:if test="${loggedCustomer.country eq country.value}">selected</c:if>>${country.key}</option>
													    </c:forEach>
												    </select>
	                                            </div>
	                                            <div class="col-md-6 col-12 mb--20">
	                                                <label>State*</label>
	                                                <input type="text" name="state" id="state" value="${loggedCustomer.state}" placeholder="State">
	                                            </div>
	                                            <div class="col-md-6 col-12 mb--20">
	                                                <label>Town/City*</label>
	                                                <input type="text" name="city" id="city" value="${loggedCustomer.city}" placeholder="Town/City">
	                                            </div>
	                                            <div class="col-12 mb--20 block-border">
	                                                <label>Zip Code*</label>
	                                                <input type="text" name="zipcode" id="zipcode" value="${loggedCustomer.zipcode}" placeholder="Zip Code">
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                                <div class="col-lg-5">
	                                    <div class="row">
	                                        <!-- Cart Total -->
	                                        <div class="col-12">
	                                            <div class="checkout-cart-total">
	                                                <h2 class="checkout-title">YOUR ORDER</h2>
	                                                <h4>Product <span>Total</span></h4>
	                                                <ul>
	                                                	<c:forEach items="${cart.items}" var="item" varStatus="status">
	                                                    	<li><span class="left">${item.key.title} <i>x${item.value}</i></span> <span class="right"><fmt:formatNumber value="${item.value * item.key.price}" type="currency"/></span></li>
	                                                    </c:forEach>
	                                                </ul>
	                                                <p>Sub Total <span><fmt:formatNumber value="${cart.totalAmount}" type="currency"/></span></p>
	                                                <p>Tax <span><fmt:formatNumber value="${tax}" type="currency"/></span></p>
	                                                <p>Shipping Fee <span><fmt:formatNumber value="${shippingFee}" type="currency"/></span></p>
	                                                <h4>Grand Total <span><fmt:formatNumber value="${total}" type="currency"/></span></h4>
	                                                
	                                                <div class="mt--25 payment">
	                                                	<h2 class="checkout-title ">PAYMENT</h2>
	                                                	<h4>Payment Method</h4>
	                                                	<select class="nice-select" name="paymentMethod" id="paymentMethod">
													    	<option value="Cash On Delivery">Cash On Delivery</option>
	                             							<option value="paypal">PayPal or Credit card</option>
												    	</select>
	                                                </div>
	                                                <button class="place-order w-100" type="submit">Place order</button>
	                                            </div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

	<jsp:directive.include file="footer.jsp"/>

	<script>
		$(document).ready(function() {
			
			$("#orderForm").validate({
	    		 rules: {
	    			 firstname: "required",
	    			 lastname: "required",
	    			 phone: "required",
	    			 address1: "required",
	    			 city: "required",
	    			 state: "required",
	    			 zipcode: "required",
	    			 country: "required",
	    		 },
	    		 
	    		messages: {
	    			 firstname: "*Please enter firstname",
	    			 lastname: "*Please enter lastname",
	    			 phone: "*Please enter phone number",
	    			 address1: "*Please enter address line 1",
	    			 city: "*Please enter city",
	    			 state: "*Please enter state",
	    			 zipcode: "*Please enter zip code",
	    			 country: "*Please enter country",
	    		}
	    	});
		});
	</script>
</body>

</html>