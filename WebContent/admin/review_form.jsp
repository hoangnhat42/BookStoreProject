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
<title>Edit Review</title>
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


<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.validate.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui.min.js"></script>

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
			<li><a href="#" class="active"> <i class='bx bx-text'></i> <span>Reviews</span>
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

			<div class="main-title">
				<h2 class="pageheading">Edit Review</h2>
			</div>
		</div>
		<div class="main-content">


			<div class="row">

				<form action="update_review" method="post" id="reviewForm">
					<input type="hidden" name="reviewId" value="${review.reviewId}">

					<div class="col-12">

						<form action="emailList" method="post" class="container box">
							<input type="hidden" name="action" value="add">
							<table class="table table-borderless">
								<tbody>

									<tr>
										<td class="text-right td-label"><label
											for="customer-name" class="">Book:</label></td>
										<td><b class="input-focus usid">${review.book.title}</b></td>
									</tr>
									<tr>
										<td class="text-right td-label"><label
											for="customer-name" class="">Rating:</label></td>
										<td><b class="input-focus usid">${review.rating}</b></td>
									</tr>
									<tr>
										<td class="text-right td-label"><label
											for="customer-name" class="">Customer:</label></td>
										<td><b class="input-focus usid">${review.customer.fullname}</b></td>
									</tr>
							
									<tr>
										<td class="text-right td-label"><label
											for="customer-name" class="">Headline:</label></td>
										<td><input type="text" class="input-focus usid"
											name="headline" value="${review.headline}"></td>
									</tr>
									<tr>
										<td class="text-right td-label"><label
											for="customer-name" class="">Comment:</label></td>
										<td><textarea class="input-focus usid" name="comment">${review.comment}</textarea></td>
									</tr>


									<td class="text-right"></td>
									<td><span class="btn-color"> <input type="submit"
											value="Save" class="btn btn-primary btn-test">
									</span> <input type="button" id="buttonCancel" value="Cancel"
										class="btn btn-primary btn-test"></td>
									</tr>
								</tbody>
							</table>
						</form>

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
	$(document).ready(function() {
		$("#reviewForm").validate({
			rules : {
				headline : "required",
				comment : "required"
			},
			messages : {
				headline : "Please enter headline",
				comment : "Please enter comment"
			}
		});

		$("#buttonCancel").click(function() {
			history.go(-1);
		});
	});
</script>

</html>