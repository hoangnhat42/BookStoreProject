<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
                            <li class="breadcrumb-item active">Register</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
        <!--=============================================
    =            Login Register page content         =
    =============================================-->
        <main class="page-section inner-page-sec-padding-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 col-lg-8 col-xs-12">
                        <form action="register_customer" id="customerForm" method="post">
                            <div class="login-form">
								<h4 class="login-title">Register</h4>
								<p><span class="font-weight-bold">I am a new customer</span></p>
								<div class="row">
								    <div class="col-12 mb--20">
								        <label for="email">Email:</label>
								        <input type="text" class="mb-0 form-control" id="email" placeholder="Enter your email address..." name="email"  value="${customer.email}"/>
							        </div>
							        <div class="col-md-6 col-12 mb--15">
							            <label for="email">First Name:</label>
							            <input class="mb-0 form-control" placeholder="Enter your first name..." type="text" id="firstName" name="firstName"  value="${customer.firstname}" />
							        </div>
							        <div class="col-md-6 col-12 mb--15">
							            <label for="email">Last Name:</label>
							            <input class="mb-0 form-control" placeholder="Enter your last name..." type="text" id="lastName" name="lastName"  value="${customer.lastname}" />
							        </div>
							       
							        <div class="col-6 mb--20">
							            <label for="email">Password:</label>
							            <input type="password" class="mb-0 form-control" id="password" placeholder="Enter your password..." name="password"  value="${customer.password}"/>
							        </div>
							        <div class="col-6 mb--20">
							            <label for="email">Confirm Password:</label>
							            <input type="password" class="mb-0 form-control" id="confirmpassword" placeholder="Repeat password..." name="confirmpassword"  value="${customer.password}"/>
							        </div>
							        <div class="col-12 mb--20">
							            <label for="email">Phone Number:</label>
							            <input type="text" class="mb-0 form-control" id="phone" placeholder="Enter your phone number..." name="phone"  value="${customer.phone}"/>
							        </div>
							        <div class="col-12 mb--20">
							            <label for="email">Address Line 1:</label>
							            <input type="text" class="mb-0 form-control" id="address1" placeholder="Enter your address line 1..." name="address1"  value="${customer.addressLine1}"/>
							        </div>
							        <div class="col-12 mb--20">
							            <label for="email">Address Line 2:</label>
							            <input type="text" class="mb-0 form-control" id="address2" placeholder="Enter your address line 2..." name="address2"  value="${customer.addressLine2}"/>
							        </div>
							        <div class="col-6 mb--20">
							            <label for="email">City:</label>
							            <input type="text" class="mb-0 form-control" id="city" placeholder="Enter your city..." name="city"  value="${customer.city}"/>
							        </div>
							        <div class="col-6 mb--20">
							            <label for="email">State:</label>
							            <input type="text" class="mb-0 form-control" id="state" placeholder="Enter your state..." name="state"  value="${customer.state}"/>
							        </div>
							        <div class="col-6 mb--20">
							            <label for="email">Zip Code:</label>
							            <input type="text" class="mb-0 form-control" id="zipCode" placeholder="Enter your zip code..." name="zipCode" value="${customer.zipcode}"/>
							        </div>
							        <div class="col-6 mb--20">
							            <label for="email">Country:</label>
							                <select name="country" class="nice-select" id="country">
								                <c:forEach items="${mapCountries}" var="country">
								                   <option value="${country.value}"<c:if test="${loggedCustomer.country eq country.value}">selected</c:if>>${country.key}</option>
								                </c:forEach>
							            	</select>
							        </div>
							
							
							        <div class="col-md-12">
							            <button type="submit" class="btn btn-outlined">Register</button>
							            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							            <input type="button" class="btn btn-outlined" value="Cancel" onclick="history.go(-1);" />
							        </div>
							    </div>
							</div>
                        </form>
                    </div>
                </div>
            </div>
        </main>
    </div>

	<jsp:directive.include file="footer.jsp"/>

    <script type="text/javascript" src="js/customer-form.js"></script>
</body>

</html>
