<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Order - Bookstore Administration</title>
<link rel="shortcut icon" href=".../images/logo-mb.png" type="image/png">
<!-- GOOGLE FONT -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
	rel="stylesheet">
<!-- BOXICONS -->
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<!-- APP CSS -->
<link rel="stylesheet" href="../css/grid.css">
<link rel="stylesheet" href="../css/app.css">
<link rel="stylesheet" href="../css/jquery-ui.min.css">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="..//css/richtext.min.css">

<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.validate.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../js/jquery.richtext.min.js"></script>
</head>

<body>

	<!-- SIDEBAR -->
	<div class="sidebar">
		<div class="sidebar-logo">
			<img src="../images/logo-lg.png" alt="Comapny logo">
			<div class="sidebar-close" id="sidebar-close">
				<i class='bx bx-left-arrow-alt'></i>
			</div>
		</div>
		<div class="sidebar-user">
			<div class="sidebar-user-info">
				<img src="../images/user-image-2.png" alt="User picture"
					class="profile-image">
				<div class="sidebar-user-name">
					Welcome,
					<c:out value="${sessionScope.useremail}" />
				</div>
			</div>
			<a class="btn btn-outline custombtn" href="logout"> <i
				class='bx bx-log-out bx-flip-horizontal'></i>Log out
			</a>
		</div>
		<!-- SIDEBAR MENU -->
		<ul class="sidebar-menu">
			<li><a href="${pageContext.request.contextPath}/admin/"> <i
					class='bx bx-home'></i> <span>dashboard</span>
			</a></li>
			<li><a href="list_users"> <i class='bx bx-user'></i> <span>Users</span>
			</a></li>
			<li><a href="list_category"> <i class='bx bx-category'></i>
					<span>Categories</span>
			</a></li>
			<li><a href="list_books"> <i class='bx bx-book-bookmark'></i>
					<span>Books</span>
			</a></li>
			<li><a href="list_customer"> <i class='bx bxs-user-detail'></i>
					<span>Customers</span>
			</a></li>
			<li><a href="list_review"> <i class='bx bx-text'></i> <span>Reviews</span>
			</a></li>
			<li><a href="#" class="active"> <i class='bx bx-cart'></i> <span>orders</span>
			</a></li>
			<li class="sidebar-submenu"><a href="#"
				class="sidebar-menu-dropdown"> <i class='bx bx-cog'></i> <span>settings</span>
					<div class="dropdown-icon"></div>
			</a>
				<ul class="sidebar-menu sidebar-menu-dropdown-content">
					<li><a href="#" class="darkmode-toggle" id="darkmode-toggle">
							darkmode <span class="darkmode-switch"></span>
					</a></li>
				</ul></li>
		</ul>
		<!-- END SIDEBAR MENU -->
	</div>
	<!-- END SIDEBAR -->
	<!-- MAIN CONTENT -->
	<div class="main">
		<div class="main-header">
			<div class="mobile-toggle" id="mobile-toggle">
				<i class='bx bx-menu-alt-right'></i>
			</div>

			<div class="main-title">
				<h2 class="pageheading">
					<h2 class="pageheading">Edit Order ID: ${order.orderId}</h2>
				</h2>
			</div>
		</div>
		<div class="main-content">


			<div class="row">
				<c:if test="${message != null}">
					<div align="center">
						<h4 class="message">${message}</h4>
					</div>
				</c:if>
				<form action="update_order" method="post" id="orderForm">
					<div class="col-12">

						<form class="container box">

							<table class="table table-borderless">
								<h2>Order Overview:</h2>
								<tbody>

									<tr>

										<td class="text-right td-label"><label
											for="customer-name" class="">Ordered By: </label></td>
										<td><input type="text" class="input-focus usid"
											name="title" id="title" value="${order.customer.fullname}"></td>
									</tr>

									<tr>
										<td class="text-right td-label"><label
											for="customer-name" class="">Order Date:</label></td>
										<td><input type="text" class="input-focus usid"
											value="<fmt:formatDate pattern='MM/dd/yyyy' value='${order.orderDate}' />"></td>
									</tr>

									<tr>
										<td class="text-right td-label"><label
											for="customer-name" class="">Payment Method: </label></td>
										<td><label class="custom-select"> <select
												name="paymentMethod">
													<option value="Cash On Delivery"
														<c:if test="${order.paymentMethod eq 'Cash On Delivery'}">selected='selected'</c:if>>Cash
														On Delivery</option>
													<option value="paypal"
														<c:if test="${order.paymentMethod eq 'paypal'}">selected='selected'</c:if>>PayPal
														or Credit card</option>
											</select>

										</label></td>
									</tr>


									<tr>
										<td><b>Order Status: </b></td>
										<td> <label class="custom-select"><select name="orderStatus">
												<option value="Processing"
													<c:if test="${order.status eq 'Processing'}">selected='selected'</c:if>>Processing</option>
												<option value="Shipping"
													<c:if test="${order.status eq 'Shipping'}">selected='selected'</c:if>>Shipping</option>
												<option value="Delivered"
													<c:if test="${order.status eq 'Delivered'}">selected='selected'</c:if>>Delivered</option>
												<option value="Completed"
													<c:if test="${order.status eq 'Completed'}">selected='selected'</c:if>>Completed</option>
												<option value="Cancelled"
													<c:if test="${order.status eq 'Cancelled'}">selected='selected'</c:if>>Cancelled</option>
										</select>
										</label></td>
									</tr>


									</tr>
								</tbody>
							</table>

							<table class="table table-borderless">
								<tbody>
									<h2>Recipient Information</h2>

									<tr>
									<tr>
										<td class="text-right td-label">First Name:</td>
										<td align="left"><input type="text"
											class="input-focus usid" id="firstname" name="firstname"
											size="45" value="${order.firstname}" /></td>
									</tr>
									<tr>
										<td class="text-right td-label">Last Name:</td>
										<td align="left"><input type="text"
											class="input-focus usid" id="lastname" name="lastname"
											size="45" value="${order.lastname}" /></td>
									</tr>

									<tr>
										<td class="text-right td-label" style="padding-right: 6px;">Recipient Phone:</td>
										<td align="left"><input type="text"
											class="input-focus usid" id="phone" name="phone" size="45"
											value="${order.phone}" /></td>
									</tr>
									<tr>
										<td class="text-right td-label">Address Line1:</td>
										<td align="left"><input type="text"
											class="input-focus usid" id="address1" name="address1"
											size="45" value="${order.addressLine1}" /></td>
									</tr>
									<tr>
										<td class="text-right td-label">Address Line2:</td>
										<td align="left"><input type="text"
											class="input-focus usid" id="address2" name="address2"
											size="45" value="${order.addressLine2}" /></td>
									</tr>
									<tr>
										<td class="text-right td-label">City:</td>
										<td align="left"><input type="text"
											class="input-focus usid" id="city" name="city" size="45"
											value="${order.city}" /></td>
									</tr>
									<tr>
										<td class="text-right td-label">State:</td>
										<td align="left"><input type="text"
											class="input-focus usid" id="state" name="state" size="45"
											value="${order.state}" /></td>
									</tr>
									<tr>
										<td class="text-right td-label">Zip Code:</td>
										<td align="left"><input type="text"
											class="input-focus usid" id="zipcode" name="zipcode"
											size="45" value="${order.zipcode}" /></td>
									</tr>
									<tr>
										<td class="text-right td-label">Country:</td>
										<td align="left">
										<select name="country" id="country"
											class="input-focus usid">
												<c:forEach items="${mapCountries}" var="country">
													<option value="${country.value}"
														<c:if test="${order.country eq country.value}">selected='selected'</c:if>>${country.key}</option>
												</c:forEach>
										</select>
										
										</td>
									</tr>

									</tr>
								</tbody>
							</table>

							<div class="box-body overflow-scroll">
								<table>
									<h2>Ordered Books</h2>
									<thead>
										<tr>
											<th>Index</th>
											<th>Book Title</th>
											<th>Author</th>
											<th>Price</th>
											<th>Quantity</th>
											<th>Subtotal</th>
										</tr>

									</thead>
									<tbody>
										<c:forEach items="${order.orderDetails}" var="orderDetail"
											varStatus="status">
											<tr>

												<td><span
													class="order-status order-shipped fontsize12px">
														${status.index + 1} </span></td>

												<td><span
													class="order-status order-shipped fontsize12px">
														${orderDetail.book.title} </span></td>
												<td><span
													class="order-status order-shipped fontsize12px">
														${orderDetail.book.author} </span></td>

												<td><input type="hidden" name="price"
													value="${orderDetail.book.price}" /> <span
													class="order-status order-shipped fontsize12px"> <fmt:setLocale
															value="en_US" /> <fmt:formatNumber
															value="${orderDetail.book.price}" type="currency" />
												</span></td>

												<td><input type="hidden" name="bookId"
													value="${orderDetail.book.bookId}" /> <input
													class="textaligncenter" type="text"
													name="quantity${status.index + 1}"
													value="${orderDetail.quantity}" size="5" /></td>
												<td><fmt:formatNumber value="${orderDetail.subtotal}"
														type="currency" /></td>
												<td><a
													href="remove_book_from_order?id=${orderDetail.book.bookId}"><i
														class='bx bx-trash bx-flip-horizontal'></i>Remove</a></td>

											</tr>
										</c:forEach>
										<tr>
											<td colspan="7" align="right">
												<p style="padding-right: 18px">
													Subtotal:
													<fmt:setLocale value="en_US" />
													<fmt:formatNumber value="${order.subtotal}" type="currency" />
												</p>
												<p>
													Tax: <input class="textaligncenter" type="text" size="5"
														name="tax" id="tax" value="${order.tax}" />
												</p>
												<p>
													Shipping Fee: <input class="textaligncenter" type="text"
														size="5" name="shippingFee" id="shippingFee"
														value="${order.shippingFee}" />
												</p>
												<br>
												<p style="padding-right: 18px">
													TOTAL:
													<fmt:setLocale value="en_US" />
													<fmt:formatNumber value="${order.total}" type="currency" />
												</p>
											</td>
										</tr>
									</tbody>
								</table>
							</div>



						</form>

						<div align="center">
							<br /> <a class="btn btn-primary btn-test"
								href="javascript:showAddBookPopup()"><b>Add Books</b></a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="btn-color">
								<input type="submit" value="Save"
								class="btn btn-primary btn-test">
							</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button"
								value="Cancel" class="btn btn-primary btn-test"
								onclick="javascript:window.location.href='list_order';" />
						</div>

					</div>
			</div>
		</div>
	</div>
	<!-- END MAIN CONTENT -->

	<div class="overlay"></div>

	<!-- SCRIPT -->
	<!-- APEX CHART -->
	<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
	<!-- APP JS -->
	<script src="../js/app.js"></script>
	<!-- Star -->

	<jsp:directive.include file="footer.jsp" />

</body>
<script type="text/javascript">
function showAddBookPopup() {
		   var width = 600;
		   var height = 250;
		   var left = (screen.width - width) / 2;
		   var top = (screen.height - height) / 2;
		   
		   window.open('add_book_form', '_blank', 
				   'width=' + width + ', height=' + height + ', top=' + top + ', left=' + left);
	   }
	   
	   $(document).ready(function(){
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
					
					<c:forEach items="${order.orderDetails}" var="book" varStatus="status">
			           quantity${status.index + 1}: {
			    	        required: true, number: true, min: 1
			    	   },
			       </c:forEach>
			    	   
			       shippingFee: {required: true, number: true, min: 0},
			       tax: {required: true, number: true, min: 0},
				},
				
				messages: {
					firstname: "Please enter firstname",
					lastname: "Please enter lastname",
					phone: "Please enter phone",
					address1: "Please enter address line 1",
					city: "Please enter city",
					state: "Please enter state",
					zipcode: "Please enter zipcode",
					country: "Please select country",
					
					<c:forEach items="${order.orderDetails}" var="book" varStatus="status">
			             quantity${status.index + 1}: {
			    	        required: "Please enter quantity",
			    	        number: "Quantity must be a number",
			    	        min: "Quantity must be greater than 0"
			    	   },
			        </c:forEach>
			    	   
			    	shippingFee: {
			    		required: "Please enter shipping fee",
			    		number: "Shipping fee must be a number",
			    		min: "Shipping fee must be equal or greater than 0"
			    	},
			    	tax: {
			    		required: "Please enter tax",
			    		number: "Tax must be a number",
			    		min: "Tax must be equal or greater than 0"
			    	},
				}
			});
			
		});
	
    
    </script>

</html>