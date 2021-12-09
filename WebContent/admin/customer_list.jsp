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
    <title>
        Manage Customers - Bookstore Administration
    </title>
    <link rel="shortcut icon" type="image/x-icon" href="../image/Bookshop_Logo.ico">
    <!-- GOOGLE FONT -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <!-- BOXICONS -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <!-- APP CSS -->
    <link rel="stylesheet" href="../css/grid.css">
    <link rel="stylesheet" href="../css/app.css">
    
    <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="../js/jquery.validate.min.js"></script>
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
			<li><a href="list_books" > <i
					class='bx bx-book-bookmark'></i> <span>Books</span>
			</a></li>
			<li><a href="#" class="active"> <i class='bx bxs-user-detail'></i>
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
			<div class="main-title">Customers Management</div>
		</div>
		<div class="main-content">


			<div class="row">

				<div class="col-12">

					<!-- ORDERS TABLE -->
					<div class="box">
						<td><span class="btn-color">
						<a href="new_customer"> <input type="submit"
							value="Create New Customer"
							class="btn btn-primary btn-test width182px">
						</a> </span> </td>
						<c:if test="${message != null}">
	<div align="center">
	    <h4 class="message">${message}</h4>
	</div>
	</c:if>
						<div class="box-body overflow-scroll">
							<table>
								<thead>
									<tr>
										<th>Index</th>
										<th class = "textaligncenter">ID</th>
										<th>E-mail</th>
										<th>First Name</th>
				                        <th>Last Name</th>
				                        <th>City</th>
				                        <th>Country</th>
				                        <th>Registered Date</th>
				                        <th>Actions</th>
									</tr>

								</thead>
								<tbody>
									<c:forEach var="customer" items="${listCustomer}" varStatus="status">
										<tr>

											<td><span class="order-status order-shipped fontsize12px">
													${status.index + 1} </span></td>

											<td><span class="order-status order-shipped fontsize12px">
													${customer.customerId} </span></td>

										
											<td><span class="order-status order-shipped fontsize12px">
													${customer.email} </span></td>

											<td><span class="order-status order-shipped fontsize12px">
													${customer.firstname} </span></td>

											<td><span class="order-status order-shipped fontsize12px">
													${customer.lastname} </span></td>


											<td><span class="order-status order-shipped fontsize12px">
													${customer.city} </span></td>
                                                    
                                            <td><span class="order-status order-shipped fontsize12px">
                                                        ${customer.countryName} </span></td>
                                        

											<td><span class="order-status order-shipped fontsize12px"> <fmt:formatDate
														pattern='MM/dd/yyyy' value='${customer.registerDate}' /></span></td>

											<td><a href="edit_customer?id=${customer.customerId}"><i
													class='bx bx-edit bx-flip-horizontal'></i>Edit |</a> &nbsp; <a
												href="javascript:void(0);" class="deleteLink"
												id="${customer.customerId}"> <i
													class='bx bx-trash bx-flip-horizontal'></i>Delete
											</a></td>
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
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <!-- APP JS -->
    <script src="../js/app.js"></script>
    <!-- Star -->
    <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
     <jsp:directive.include file="footer.jsp"/>
     <script>
	
    $(document).ready(function(){
	    	$(".deleteLink").each(function(){
	    		$(this).on("click", function(){
	    			customerId = $(this).attr("id");
	    			if ( confirm("Are you sure you want to delete the customer with ID" + customerId + "?")){
	    	    		window.location = "delete_customer?id=" + customerId;
	    	    	}
	    		});
	    	});
	    });
	    
	</script>
</body>
</html>