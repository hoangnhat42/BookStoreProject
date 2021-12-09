<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
                            <li class="breadcrumb-item active">My Orders</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <!-- Wishlist Page Start -->
        <div class="cart_area inner-page-sec-padding-bottom">
            <div class="container">
            	<div class="page-section-title">
	            	<h1>My Order History</h1>
	            </div>
                <div class="row">
                    <div class="col-12">
                        <form action="./">
                            <!-- Cart Table -->
                            <div class="cart-table table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                        	<th class="pro-index"></th>
                                            <th class="pro-orderid">Order ID</th>
                                            <th class="pro-quantity">Quantity</th>
                                            <th class="pro-total">Total Amount</th>
                                            <th class="pro-orderdate">Order Date</th>
                                            <th class="pro-status">Status</th>
                                            <th class="pro-view">View Detail</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:if test="${fn:length(listOrders) == 0}">
                                        	<tr>
                                        		<td colspan="7" class="pro-title"><h5><i><b>You have not placed any orders.</b></i></h5></td>
                                        	</tr>
                                       	</c:if>
                                       	
                                       	<c:if test="${fn:length(listOrders) > 0}">
                                       		<c:forEach var="order" items="${listOrders}" varStatus="status">
		                                        <tr>
		                                        	<td class="pro-index">${status.index + 1}</td>
		                                            <td class="pro-orderid">${order.orderId}</td>
		                                            <td class="pro-quantity">${order.bookCopies}</td>
		                                            <td class="pro-total"><span><fmt:formatNumber value="${order.total}" type="currency"/></span></td>
		                                            <td class="pro-orderdate">${order.orderDate}</td>
		                                            <td class="pro-status"><span>${order.status}</span></td>
		                                            <td class="pro-view"><a href="show_order_detail?id=${order.orderId}">
		                                            	<i class="fas fa-share"></i>&nbsp;&nbsp;Detail</a>
		                                            </td>
		                                        </tr>
	                                        </c:forEach>
                                        </c:if>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cart Page End -->
    </div>

	<jsp:directive.include file="footer.jsp"/>

</body>

</html>