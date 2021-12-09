<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>${loggedCustomer.fullname} - Meta</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Use Minified Plugins Version For Fast Page Load -->
    <link rel="stylesheet" type="text/css" media="screen" href="css/plugins.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="css/main.css" />
	<!-- Use Minified Plugins Version For Fast Page Load -->
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
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}">Home</a></li>
                            <li class="breadcrumb-item active">My Account</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <div class="page-section inner-page-sec-padding">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="row">
                            <!-- My Account Tab Menu Start -->
                            <div class="col-lg-3 col-12">
                                <div class="myaccount-tab-menu nav" role="tablist">
                                    <a href="#dashboad" class="active" data-bs-toggle="tab"><i
											class="fas fa-tachometer-alt"></i>
										Dashboard</a>
                                    <a href="#account-info" data-bs-toggle="tab"><i class="fa fa-user"></i> Account
										Details</a>
                                    <a href="logout"><i class="fas fa-sign-out-alt"></i> Logout</a>
                                </div>
                            </div>
                            <!-- My Account Tab Menu End -->
                            <!-- My Account Tab Content Start -->
                            <div class="col-lg-9 col-12 mt--30 mt-lg--0">
                                <div class="tab-content" id="myaccountContent">
                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h3>Dashboard</h3>
                                            <div class="welcome mb-20">
                                                <p>Hello, <strong>${loggedCustomer.fullname}</strong></p>
                                            </div>
                                            <p class="mb-0">From your account dashboard. you can easily check &amp; view your recent orders, manage your shipping and billing addresses and edit your password and account details.</p>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content End -->
                                    <!-- Single Tab Content Start -->
                                    <div class="tab-pane fade" id="account-info" role="tabpanel">
                                        <div class="myaccount-content">
                                            <h3>Account Details</h3>
                                            <div class="account-details-form">
                                                <form action="#">
                                                    <div class="row">
                                                        <div class="col-lg-6 col-12  mb--30">
                                                        	<label>First Name</label>
                                                            <input id="first-name" type="text" readonly="readonly" value="${loggedCustomer.firstname}">
                                                        </div>
                                                        <div class="col-lg-6 col-12  mb--30">
                                                        	<label>Last Name</label>
                                                            <input id="last-name" type="text" readonly="readonly" value="${loggedCustomer.lastname}">
                                                        </div>
                                                        <div class="col-lg-6 col-12  mb--30">
                                                        	<label>Email</label>
                                                            <input id="email" type="email" readonly="readonly" value="${loggedCustomer.email}">
                                                        </div>
                                                        <div class="col-lg-6 col-12  mb--30">
                                                        	<label>Phone</label>
                                                            <input id="phone" type="text" readonly="readonly" value="${loggedCustomer.phone}">
                                                        </div>
                                                        <div class="col-12  mb--30">
                                                        	<label>Address</label>
                                                            <input id="address1" type="text" readonly="readonly" value="${loggedCustomer.addressLine1}">
                                                            <br>
                                                            <c:if test="${loggedCustomer.addressLine2 != null}">
                                                            	<input id="address2" type="text" readonly="readonly" value="${loggedCustomer.addressLine2}">
				                                        	</c:if>
                                                        </div>
                                                        <div class="col-lg-6 col-12  mb--30">
                                                        	<label>City</label>
                                                            <input id="city" type="text" readonly="readonly" value="${loggedCustomer.city}">
                                                        </div>
                                                        <div class="col-lg-6 col-12  mb--30">
                                                        	<label>State</label>
                                                            <input id="state" type="text" readonly="readonly" value="${loggedCustomer.state}">
                                                        </div>
                                                        <div class="col-lg-6 col-12  mb--30">
                                                        	<label>Zipcode</label>
                                                            <input id="zipcode" type="text" readonly="readonly" value="${loggedCustomer.zipcode}">
                                                        </div>
                                                        <div class="col-lg-6 col-12  mb--30">
                                                        	<label>Country</label>
                                                            <input id="country" type="text" readonly="readonly" value="${loggedCustomer.countryName}">
                                                        </div>
                                                        <div class="col-12">
                                                            <a href="edit_profile" class="btn btn--primary">Edit Profile</a>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Single Tab Content End -->
                                </div>
                            </div>
                            <!-- My Account Tab Content End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <jsp:directive.include file="footer.jsp"/>
    
</body>

</html>