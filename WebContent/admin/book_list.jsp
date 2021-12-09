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
        Manage Books - Bookstore Administration
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
			<img src="../image/logo.png" alt="Comapny logo">
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
			<li><a href="#" class="active"> <i
					class='bx bx-book-bookmark'></i> <span>Books</span>
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
			<div class="main-title">Books Management</div>
		</div>
		<div class="main-content">


			<div class="row">

				<div class="col-12">

					<!-- ORDERS TABLE -->
					<div class="box">
						<td><span class="btn-color">
						<a href="new_book"> <input type="submit"
							value="Create New Book"
							class="btn btn-primary btn-test width148px">
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
										<th>Image</th>
										<th>Title</th>
										<th>Author</th>
										<th>Category</th>
										<th>Price</th>
										<th>Last Updated</th>
										<th>Actions</th>
									</tr>

								</thead>
								<tbody>
									<c:forEach var="book" items="${listBooks}" varStatus="status">
										<tr>

											<td><span class="order-status order-shipped fontsize12px">
													${status.index + 1} </span></td>

											<td><span class="order-status order-shipped fontsize12px">
													${book.bookId} </span></td>

											<td><img
												src="${book.image}" width="110"
												height="110" /></td>

											<td><span class="order-status order-shipped fontsize12px">
													${book.title} </span></td>

											<td><span class="order-status order-shipped fontsize12px">
													${book.author} </span></td>

											<td><span class="order-status order-shipped fontsize12px">
													${book.category.name} </span></td>


											<td><span class="order-status order-shipped fontsize12px">
													$${book.price} </span></td>

											<td><span class="order-status order-shipped fontsize12px"> <fmt:formatDate
														pattern='MM/dd/yyyy' value='${book.lastUpdateTime}' /></span></td>

											<td><a href="edit_book?id=${book.bookId}"><i
													class='bx bx-edit bx-flip-horizontal'></i>Edit |</a> &nbsp; <a
												href="javascript:void(0);" class="deleteLink"
												id="${book.bookId}"> <i
													class='bx bx-trash bx-flip-horizontal'></i>Delete
											</a></td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
							
					<div class="pagination">	
					<ul class="fixul numb">	
							<%--For displaying Previous link except for the 1st page --%>
						    <c:if test="${currentPage != 1}">
						        <li><a href="${pageContext.request.contextPath}/admin/list_books?page=${currentPage - 1}">Previous</a></li>
						    </c:if>
						 
						    <%--For displaying Page numbers. The when condition does not display a link for the current page--%>
						    
						        
						            <c:forEach begin="1" end="${noOfPages}" var="i">
						                <c:choose>
						                    <c:when test="${currentPage eq i}">
						                        <li class = "numb">${i}</li>
						                    </c:when>
						                    <c:otherwise>
						                        <li><a href="${pageContext.request.contextPath}/admin/list_books?page=${i}">${i}</a></li>
						                    </c:otherwise>
						                </c:choose>
						            </c:forEach>
						        
						    
						     
						    <%--For displaying Next link --%>
						    <c:if test="${currentPage lt noOfPages}">
						        <li><a href="${pageContext.request.contextPath}/admin/list_books?page=${currentPage + 1}">Next</a></li>
						    </c:if>
						    </ul>
						    </div>
						    
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
	    			bookId = $(this).attr("id");
	    			if ( confirm("Are you sure you want to delete the book with ID" + bookId + "?")){
	    	    		window.location = "delete_book?id=" + bookId;
	    	    	}
	    		});
	    	});
	    });
	    
	</script>
</body>
</html>