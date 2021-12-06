<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Review Payment - Online Bookstore</title>
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
                            <li class="breadcrumb-item active">Payment Info</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <main id="content" class="page-section inner-page-sec-padding-bottom space-db--20">
            <div class="container">
                <div class="row">
                	<div class="col-12 text-center">
                		<h5><i>Please carefully review the following information before making payment!</i></h5>
                	</div>
                	
                    <div class="col-12">
                        <!-- Checkout Form s-->
                        <div class="checkout-form">
                            <div class="row row-40">
                            	<div class="col-lg-7 mb--20">
                                    <!-- Billing Address -->
                                    <div id="billing-form" class="mb-40">
                                    
                                        <h4 class="checkout-title">Payer Information</h4>
                                        <div class="row">
                                            <div class="col-md-6 col-12 mb--20">
                                                <label>First Name</label>
                                                <input type="text" readonly="readonly" value="${payer.firstName}">
                                            </div>
                                            <div class="col-md-6 col-12 mb--20">
                                                <label>Last Name</label>
                                                <input type="text" readonly="readonly" value="${payer.lastName}">
                                            </div>
                                            <div class="col-12 mb--20">
                                                <label>Email</label>
                                                <input type="text" readonly="readonly" value="${payer.email}">
                                            </div>
                                        </div>
                                    </div>
                                    <div id="billing-form" class="mb-40">
                                    
                                        <h4 class="checkout-title">Recipient Information</h4>
                                        <div class="row">
                                            <div class="col-12 mb--20">
                                                <label>Recipient Name</label>
                                                <input type="text" readonly="readonly" value="${recipient.recipientName}">
                                            </div>
                                            <div class="col-12 mb--20">
                                                <label>Address</label>
                                                <input type="text" readonly="readonly" value="${recipient.line1}">
                                                <c:if test="${recipient.line2 != null}">
                                                	<input type="text" readonly="readonly" value="${recipient.line2}">
                                                </c:if>
                                            </div>
                                            <div class="col-md-6 col-12 mb--20">
                                                <label>City</label>
                                                <input type="text" readonly="readonly" value="${recipient.city}">
                                            </div>
                                            <div class="col-md-6 col-12 mb--20">
                                                <label>State</label>
                                                <input type="text" readonly="readonly" value="${recipient.state}">
                                            </div>
                                            <div class="col-md-6 col-12 mb--20">
                                                <label>Postal Code</label>
                                                <input type="text" readonly="readonly" value="${recipient.postalCode}">
                                            </div>
                                            <div class="col-md-6 col-12 mb--20">
                                                <label>Country</label>
                                                <input type="text" readonly="readonly" value="${recipient.countryCode}">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                    <div class="row">
                                        <!-- Cart Total -->
                                        <div class="col-12">
                                            <div class="checkout-cart-total">
                                                <h2 class="checkout-title">TRANSACTION DETAIL</h2>
                                                <h4>Product <span>Total</span></h4>
                                                <ul>
                                                	<c:forEach items="${transaction.itemList.items}" var="item" varStatus="status">
                                                    	<li><span class="left">${item.name} <i>x${item.quantity}</i></span> <span class="right"><fmt:formatNumber value="${item.price * item.quantity}" type="currency"/></span></li>
                                                    </c:forEach>
                                                </ul>
                                                <p>Sub Total <span><fmt:formatNumber value="${transaction.amount.details.subtotal}" type="currency"/></span></p>
                                                <p>Tax <span><fmt:formatNumber value="${transaction.amount.details.tax}" type="currency"/></span></p>
                                                <p>Shipping Fee <span><fmt:formatNumber value="${transaction.amount.details.shipping}" type="currency"/></span></p>
                                                <h4>Grand Total <span><fmt:formatNumber value="${transaction.amount.total}" type="currency"/></span></h4>
                                                
                                                <div class="mt--25 payment">
                                                	<form action="execute_payment" method="post">
										            	<input type="hidden" name="paymentId" value="${param.paymentId}"/>
										            	<input type="hidden" name="PayerID" value="${param.PayerID}"/>
                                                		<button class="place-order w-100" type="submit">Pay Now</button>
										        	</form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>

	<jsp:directive.include file="footer.jsp"/>
	
</body>

</html>