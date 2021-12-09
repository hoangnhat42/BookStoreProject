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
<title>Bookstore Administration</title>
<link rel="shortcut icon" type="image/x-icon" href="../image/Bookshop_Logo.ico">
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
			<li><a href="#" class="active"> <i class='bx bx-home'></i> <span>dashboard</span>
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
			<li><a href="list_order"> <i class='bx bx-cart'></i> <span>orders</span>
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
			<div class="main-title customdb">
				dashboard <span class="btn-color"> <a href="new_book"> <input
						type="submit" value="New Book" class="btn btn-primary btn-test">
				</a>
				</span> <span class="btn-color"> <a href="new_user"> <input
						type="submit" value="New User" class="btn btn-primary btn-test">
				</a>
				</span> <span class="btn-color"> <a href="new_category"> <input
						type="submit" value="New Category"
						class="btn btn-primary btn-test">
				</a>
				</span> <span class="btn-color"> <a href="new_customer"> <input
						type="submit" value="New Customer"
						class="btn btn-primary btn-test">
				</a>
				</span>

			</div>
		</div>
		<div class="main-content">
			<div class="row">
				<div class="col-3 col-md-6 col-sm-12">
					<div class="box box-hover">
						<!-- COUNTER -->
						<div class="counter">
							<div class="counter-title">Total Users:</div>
							<div class="counter-info">
								<div class="counter-count">${totalUsers}</div>
								<i class='bx bx-user'></i>
							</div>
						</div>
						<!-- END COUNTER -->
					</div>
				</div>
				<div class="col-3 col-md-6 col-sm-12">
					<div class="box box-hover">
						<!-- COUNTER -->
						<div class="counter">
							<div class="counter-title">Total Books</div>
							<div class="counter-info">
								<div class="counter-count">${totalBooks}</div>
								<i class='bx bx-book-bookmark'></i>
							</div>
						</div>
						<!-- END COUNTER -->
					</div>
				</div>
				<div class="col-3 col-md-6 col-sm-12">
					<div class="box box-hover">
						<!-- COUNTER -->
						<div class="counter">
							<div class="counter-title">Total Customers</div>
							<div class="counter-info">
								<div class="counter-count">${totalCustomers}</div>
								<i class='bx bxs-user-detail'></i>
							</div>
						</div>
						<!-- END COUNTER -->
					</div>
				</div>
				<div class="col-3 col-md-6 col-sm-12">
					<div class="box box-hover">
						<!-- COUNTER -->
						<div class="counter">
							<div class="counter-title">Total Reviews</div>
							<div class="counter-info">
								<div class="counter-count">${totalReviews}</div>
								<i class='bx bx-text'></i>
							</div>
						</div>
						<!-- END COUNTER -->
					</div>
				</div>
				<div class="col-3 col-md-6 col-sm-12">
					<div class="box box-hover">
						<!-- COUNTER -->
						<div class="counter">
							<div class="counter-title">Total Orders</div>
							<div class="counter-info">
								<div class="counter-count">${totalOrders}</div>
								<i class='bx bx-cart'></i>
							</div>
						</div>
						<!-- END COUNTER -->
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-3 col-md-6 col-sm-12">
					<!-- TOP PRODUCT -->
<div class="box f-height">
    <div class="box-header">top customer</div>
    <div class="box-body">
        
        <ul class="product-list">
        <c:forEach items="${listMostRecentSales}" var="order"
        varStatus="status">
            <li class="product-list-item">
                <div class="item-info">
                    <img src="../images/user-image-2.png" alt="user image">
                    <div class="item-name">
                        <div class="product-name">${order.customer.fullname}</div>
                        <div class="text-second">${order.paymentMethod}</div>
                    </div>
                </div>
                <div class="item-sale-info">
                    <div class="text-second">Quantity</div>
                    <div class="product-sales">${order.bookCopies}</div>
                </div>
            </li>
            </c:forEach>
        </ul>
    </div>
</div>
<!-- TOP PRODUCT -->
				</div>
				<div class="col-4 col-md-6 col-sm-12">
					<!-- CATEGORY CHART -->
					<div class="box f-height">
						<div class="box-body">
							<div id="category-chart"></div>
						</div>
					</div>
					<!-- END CATEGORY CHART -->
				</div>
				<div class="col-5 col-md-12 col-sm-12">
					<!-- CUSTOMERS CHART -->
					<div class="box f-height">
						<div class="box-header">customers</div>
						<div class="box-body">
							<div id="customer-chart"></div>
						</div>
					</div>
					<!-- END CUSTOMERS CHART -->
				</div>
				<div class="col-12">

					<!-- ORDERS TABLE -->
					<div class="box">
						<div class="box-header">Recent Sales</div>
						<div class="box-body overflow-scroll">
							<table>
								<thead>
									<tr>
										<th>Order ID</th>
										<th>Ordered By</th>
										<th>Book Copies</th>
										<th>Total</th>
										<th>Payment Method</th>
										<th>Status</th>
										<th>Order Date</th>
									</tr>

								</thead>
								<tbody>
									<c:forEach items="${listMostRecentSales}" var="order"
										varStatus="status">
										<tr>
											<td><a href="view_order?id=${order.orderId}">${order.orderId}</a></td>
											<td>
												<div class="order-owner">
													<img src="../images/user-image-2.png" alt="user image">
													${order.customer.fullname}
												</div>

											</td>

											<td>
												<div class="payment-status payment-paid">
													<div class="dot"></div>
													${order.bookCopies}
												</div>
											</td>

											<td> <fmt:setLocale value = "en_US"/> <fmt:formatNumber value="${order.total}"
													type="currency" /></td>

											<td><span class="order-status order-shipped">
													${order.paymentMethod} </span></td>

											<td><span class="order-status order-shipped">
													${order.status} </span></td>

											<td><span class="order-status order-shipped">
													${order.orderDate} </span></td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
					<!-- END ORDERS TABLE -->
					<!-- ORDERS TABLE -->
					<div class="box">
						<div class="box-header">Recent Reviews</div>
						<div class="box-body overflow-scroll">
							<table>
								<thead>
									<tr>
										<th>Book</th>
										<th>Rating</th>
										<th>Headline</th>
										<th>Customer</th>
										<th>Review On</th>
									</tr>

								</thead>
								<tbody>
									<c:forEach items="${listMostRecentReviews}" var="review">
										<tr>
											<td><span class="order-status order-shipped">
													${review.book.title} </span></td>

											<td>
												<div class="payment-status payment-paid">
													${review.rating} <span class="iconify"
														data-icon="emojione:star"></span>

												</div>
											</td>

											<td><a href="edit_review?id=${review.reviewId}">${review.headline}</a></td>

											<td>
												<div class="order-owner">
													<img src="../images/user-image-2.png" alt="user image">
													${review.customer.fullname}
												</div>
											</td>

											<td><span class="order-status order-shipped">
													${review.reviewTime} </span></td>

										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
					<!-- END ORDERS TABLE -->
				</div>
			</div>
		</div>
	</div>
	<!-- END MAIN CONTENT -->

	<div class="overlay"></div>

	<!-- SCRIPT -->
	<!-- APEX CHART -->
	<script src="../js/apexcharts.js"></script>
	<!-- APP JS -->
	<script src="../js/app.js"></script>
	<!-- Star -->
	<script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
	<jsp:directive.include file="footer.jsp" />
</body>
</html>