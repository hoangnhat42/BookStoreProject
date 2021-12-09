<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Order Detail - Meta</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/style.css" />
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
                            <li class="breadcrumb-item active">Order Detail</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>

        <!-- order complete Page Start -->
        <section class="order-complete inner-page-sec-padding-bottom">
            <div class="container">
                <div class="row">
                    
                    	<c:if test="${order == null}">
	                    	<div class="col-12">
		                        <div class="order-complete-message text-center">
		                            <h1>Sorry, you are not authorized to view this order.</h1>
		                        </div>
	                        </div>
                        </c:if>
                        
                        <c:if test="${order != null}">
	                        <div class="col-12 border-bottom">
	                        	<div class="order-complete-message text-center">
		                            <h1>Your Order ID: ${order.orderId}</h1>
		                        </div>
	                        </div>
	                        
	                        <div class="col-6">
	                        	<br><br>
		                        <h3 class="order-table-title">Order Overview</h3>
		                        <div class="table-responsive">
		                            <table class="table order-details-table">
		                                <tbody>
		                                    <tr>
		                                        <td><b>Ordered By:</b></td>
		                                        <td><span>${order.customer.fullname}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Order Status:</b></td>
		                                        <td><span>${order.status}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Order Date:</b></td>
		                                        <td><span>${order.orderDate}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Payment Method:</b></td>
		                                        <td><span>${order.paymentMethod}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Book Copies:</b></td>
		                                        <td><span>${order.bookCopies}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Subtotal:</b></td>
		                                        <td><span><fmt:formatNumber value="${order.subtotal}" type="currency"/></span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Tax:</b></td>
		                                        <td><span><fmt:formatNumber value="${order.tax}" type="currency"/></span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Shipping Fee:</b></td>
		                                        <td><span><fmt:formatNumber value="${order.shippingFee}" type="currency"/></span></td>
		                                    </tr>
		                                </tbody>
		                                <tfoot>
		                                    <tr>
		                                        <td><b><i>TOTAL AMOUNT:</i></b></td>
		                                        <td><span><fmt:formatNumber value="${order.total}" type="currency"/></span></td>
		                                    </tr>
		                                </tfoot>
		                            </table>
		                        </div>
	                        </div>
	                        
	                        <div class="col-6">
	                        	<br><br>
		                        <h3 class="order-table-title">Recipient Information</h3>
		                        <div class="table-responsive">
		                            <table class="table order-details-table">
		                                <tbody>
		                                    <tr>
		                                        <td><b>First Name:</b></td>
		                                        <td><span>${order.firstname}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Last Name:</b></td>
		                                        <td><span>${order.lastname}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Phone:</b></td>
		                                        <td><span>${order.phone}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Address Line1:</b></td>
		                                        <td><span>${order.addressLine1}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Address Line 2:</b></td>
		                                        <td><span>${order.addressLine2}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>City:</b></td>
		                                        <td><span>${order.city}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>State:</b></td>
		                                        <td><span>${order.state}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Country:</b></td>
		                                        <td><span>${order.country}</span></td>
		                                    </tr>
		                                    <tr>
		                                        <td><b>Zipcode:</b></td>
		                                        <td><span>${order.zipcode}</span></td>
		                                    </tr>
		                                </tbody>
		                            </table>
		                        </div>
		                        <br>
	                        </div>
	                        
	                        <div class="col-12 border-top">
		                        <br> <br>
		                        <h3 class="order-table-title">Ordered Books</h3>
		                        <div class="cart-table table-responsive mb--40">
		                            <table class="table">
		                                <!-- Head Row -->
		                                <thead>
		                                    <tr>
		                                        <th class="pro-index"></th>
		                                        <th class="pro-title"><b>Book Title</b></th>
		                                        <th class="pro-author"><b>Author</b></th>
		                                        <th class="pro-price"><b>Price</b></th>
		                                        <th class="pro-quantity"><b>Quantity</b></th>
		                                        <th class="pro-subtotal"><b>Total</b></th>
		                                    </tr>
		                                </thead>
		                                <tbody>                                    	 
		                                      <c:forEach items="${order.orderDetails}" var="orderDetail" varStatus="status">
			                                      <!-- Product Row -->
			                                      <tr>
			                                          <td class="pro-index">${status.index + 1}</td>
			                                          <td class="pro-title">
			                                          	<img src="data:image/jpg;base64, ${orderDetail.book.base64Image}"  width="48" height="64"/>
			                                          	&nbsp;&nbsp;&nbsp;${orderDetail.book.title}
			                                          </td>
			                                          <td class="pro-author">${orderDetail.book.author}</td>
			                                          <td class="pro-price"><span><fmt:formatNumber value="${orderDetail.book.price}" type="currency"/></span></td>
			                                          <td class="pro-quantity">${orderDetail.quantity}</td>
			                                          <td class="pro-subtotal"><span><fmt:formatNumber value="${orderDetail.subtotal}" type="currency"/></span></td>
			                                      </tr>
		                                     </c:forEach>
		                                </tbody>
		                            </table>
	                        	</div>
                        	</div>
                        </c:if>
                </div>
            </div>
        </section>
        <!-- order complete Page End -->
    </div>

	<jsp:directive.include file="footer.jsp" />
</body>

</html>