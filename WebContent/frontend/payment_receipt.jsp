<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Payment Receipt - Online Bookstore</title>
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
                            <li class="breadcrumb-item active">Payment Receipt</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <main id="content" class="page-section inner-page-sec-padding-bottom space-db--20">
            <div class="container">
                <div class="row">
                	<div class="col-12 text-center">
                		<h5><i>You have made payment successfully. Thank you for purchasing!</i></h5>
                	</div>
                	
                    <div class="col-12">
                        <!-- Checkout Form s-->
                        <div class="checkout-form" id="checkout-form">
                            <div class="row row-40">
                            	<div class="col-lg-7 mb--20">
                                    <!-- Billing Address -->
                                    <div id="billing-form" class="mb-40">
                                    
                                        <h4 class="checkout-title">Seller Information</h4>
                                        <div class="row">
                                            <div class="col-12 mb--20">
                                                <label>Email</label>
                                                <input type="text" readonly="readonly" value="sales@nhatsangbook.com">
                                            </div>
                                            <div class="col-12 mb--20">
                                                <label>Phone</label>
                                                <input type="text" readonly="readonly" value="+1 234 567 890">
                                            </div>
                                        </div>
                                    </div>
                                    <div id="billing-form" class="mb-40">
                                    
                                        <h4 class="checkout-title">Buyer Information</h4>
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
                                </div>
                                <div class="col-lg-5">
                                    <div class="row">
                                        <!-- Cart Total -->
                                        <div class="col-12">
                                            <div class="checkout-cart-total">
                                                <h2 class="checkout-title">ORDER DETAIL</h2>
                                                <p>Order ID <span>${orderId}</span></p>
                                                <p>Ordered By <span>${loggedCustomer.fullname}</span></p>
                                                <p>Transaction Description <span>${transaction.description}</span></p>
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
                                                	<button class="place-order w-100" onclick="printDiv();">Print Receipt</button>
                                                </div>
                                                <div class="mt--25">
                                                	<button class="place-order w-100" onclick="location.href='${pageContext.request.contextPath}'">Continue Shopping</button>
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
	
	<script>
		function printDiv() 
		{
	
		  var divToPrint=document.getElementById('checkout-form');
	
		  var newWin=window.open('','Print-Window');
	
		  newWin.document.open();
	
		  newWin.document.write('<html><body align="center" onload="window.print()">'+divToPrint.innerHTML+'</body></html>');
	
		  newWin.document.close();
	
		  setTimeout(function(){newWin.close();},10);
		}
	</script>
	
</body>

</html>