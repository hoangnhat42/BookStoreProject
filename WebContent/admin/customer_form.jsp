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
    <title>Create New Customer
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
    <link rel="stylesheet" href="../css/jquery-ui.min.css">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
            <img src="../image/logo.png" alt="Comapny logo">
            <div class="sidebar-close" id="sidebar-close">
                <i class='bx bx-left-arrow-alt'></i>
            </div>
        </div>
        <div class="sidebar-user">
            <div class="sidebar-user-info">
                <img src="../images/user-image-2.png" alt="User picture" class="profile-image">
                <div class="sidebar-user-name">
                    Welcome, <c:out value="${sessionScope.useremail}"/>
                </div>
            </div>
            <a class="btn btn-outline custombtn" href="logout"> <i class='bx bx-log-out bx-flip-horizontal' ></i>Log out</a>
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
        
        <div class="main-title">
            <h2 class="pageheading">
                <c:if test="${customer != null}">Edit Customer</c:if>
		        <c:if test="${customer == null}">Create New Customer</c:if>
            </h2>
        </div>
        </div>
        <div class="main-content">
            

            <div class="row">
                <c:if test="${customer != null}">
	            <form action="update_customer" method="post" id="customerForm" >
	            <input type="hidden" name="customerId" value="${customer.customerId}" />
	            </c:if>
	            <c:if test="${customer == null}">
	            <form action="create_customer" method="post" id="customerForm">
	            </c:if>
                <div class="col-12">
            
                    <form class="container box">
                        <input type="hidden" name="action" value="add">
                        <table class="table table-borderless">
                            <tbody>
                              
                                <tr>
                                
                                    <td class="text-right td-label"><label
                                        for="customer-name" class= "">E-mail:</label></td>
                                    <td><input type="text" class="input-focus usid"
                                        name="email" id="email" value="${customer.email}"></td>
                                </tr>
                                <tr>
                                    <tr>
                                        <td class="text-right td-label">First Name:</td>
                                        <td align="left"><input type="text" class="input-focus usid" id="firstName" name="firstName" size="45" value="${customer.firstname}" /></td>
                                    </tr>
                                    <tr>
                                        <td class="text-right td-label">Last Name:</td>
                                        <td align="left"><input type="text" class="input-focus usid" id="lastName" name="lastName" size="45" value="${customer.lastname}" /></td>
                                    </tr>
                                    <tr>
                                        <td class="text-right td-label">Password:</td>
                                        <td align="left"><input class="input-focus usid" type="password" id="password" name="password" size="45" value="${customer.password}" /></td>
                                    </tr>
                                    <tr>
                                        <td class="text-right td-label">Confirm Password:</td>
                                        <td align="left"><input class="input-focus usid" type="password" id="confirmPassword" name="confirmPassword" size="45" value="${customer.password}" /></td>
                                    </tr>
                                    <tr>
                                        <td class="text-right td-label">Phone Number:</td>
                                        <td align="left"><input type="text" class="input-focus usid" id="phone" name="phone" size="45" value="${customer.phone}"/></td>
                                    </tr>
                                    <tr>
                                        <td class="text-right td-label">Address Line1:</td>
                                        <td align="left"><input type="text" class="input-focus usid" id="address1" name="address1" size="45" value="${customer.addressLine1}"/></td>
                                    </tr>
                                    <tr>
                                        <td class="text-right td-label">Address Line2:</td>
                                        <td align="left"><input type="text" class="input-focus usid" id="address2" name="address2" size="45" value="${customer.addressLine2}"/></td>
                                    </tr>
                                    <tr>
                                        <td class="text-right td-label">City:</td>
                                        <td align="left"><input type="text" class="input-focus usid" id="city" name="city" size="45" value="${customer.city}"/></td>
                                    </tr>
                                    <tr>
                                        <td class="text-right td-label">State:</td>
                                        <td align="left"><input type="text" class="input-focus usid" id="state" name="state" size="45" value="${customer.state}"/></td>
                                    </tr>
                                    <tr>
                                        <td class="text-right td-label">Zip Code:</td>
                                        <td align="left"><input type="text" class="input-focus usid" id="zipCode" name="zipCode" size="45" value="${customer.zipcode}"/></td>
                                    </tr>
                                    <tr>
                                        <td class="text-right td-label">Country:</td>
                                        <td align="left">
                                            <select name="country" id="country" class="input-focus usid nice-select">
                                            <c:forEach items="${mapCountries}" var="country">
                                               <option value="${country.value}"<c:if test="${customer.country eq country.value}">selected='selected'</c:if>>${country.key}</option>
                                            </c:forEach>
                                            </select>
                                        </td>
                                    </tr>
                                
                               
                                <td class="text-right"></td>
                                <td><span class="btn-color"> <input type="submit"
                                        value="Save" class="btn btn-primary btn-test">
                                </span>
									<input type="button"
                                    id="buttonCancel" value="Cancel" class="btn btn-primary btn-test">
                            </td>
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

     <jsp:directive.include file="footer.jsp"/>
 
</body>
<script type="text/javascript" src="../js/customer-form.js"></script>
    
</html>