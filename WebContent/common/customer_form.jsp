<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


        <section class="breadcrumb-section">
            <h2 class="sr-only">Site Breadcrumb</h2>
            <div class="container">
                <div class="breadcrumb-contents">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item active">Login</li>
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
                    <div class="col-sm-12 col-md-12 col-xs-12 col-lg-6 mb--30 mb-lg--0">
                        <!-- Login Form s-->
                        <form action="#">
                            <div class="login-form">
                                <h4 class="login-title">New Customer</h4>
                                <p><span class="font-weight-bold">I am a new customer</span></p>
                                <div class="row">
                                    <div class="col-12 mb--20">
                                        <label for="email">Email:</label>
                                        <input type="text" class="mb-0 form-control" id="email" placeholder="Enter Your Email Address Here.." name="email"  value="${customer.email}"/>
                                    </div>
                                    <div class="col-md-12 col-12 mb--15">
                                        <label for="email">First Name:</label>
                                        <input class="mb-0 form-control" placeholder="Enter your First Name" type="text" id="firstName" name="firstName"  value="${customer.firstname}" />
                                    </div>
                                    <div class="col-md-12 col-12 mb--15">
                                        <label for="email">Last Name:</label>
                                        <input class="mb-0 form-control" placeholder="Enter your Last Name" type="text" id="lastName" name="lastName"  value="${customer.lastname}" />
                                    </div>
                                   
                                    <div class="col-12 mb--20">
                                        <label for="email">Password:</label>
                                        <input type="password" class="mb-0 form-control" id="password" placeholder="Enter Your Password Here.." name="password"  value="${customer.password}"/>
                                    </div>
                                    <div class="col-12 mb--20">
                                        <label for="email">Confirm Password:</label>
                                        <input type="password" class="mb-0 form-control" id="confirmpassword" placeholder="Repeat Password.." name="confirmpassword"  value="${customer.password}"/>
                                    </div>
                                    <div class="col-12 mb--20">
                                        <label for="email">Phone Number:</label>
                                        <input type="text" class="mb-0 form-control" id="phone" placeholder="Enter Your Phone Number Here.." name="phone"  value="${customer.phone}"/>
                                    </div>
                                    <div class="col-12 mb--20">
                                        <label for="email">Address Line1:</label>
                                        <input type="text" class="mb-0 form-control" id="address1" placeholder="Enter Your Address Line 1 Here.." name="address1"  value="${customer.addressLine1}"/>
                                    </div>
                                    <div class="col-12 mb--20">
                                        <label for="email">Address Line2:</label>
                                        <input type="text" class="mb-0 form-control" id="address2" placeholder="Enter Your Address Line 2 Here.." name="address2"  value="${customer.addressLine2}"/>
                                    </div>
                                    <div class="col-12 mb--20">
                                        <label for="email">City:</label>
                                        <input type="text" class="mb-0 form-control" id="city" placeholder="Enter Your City Here.." name="city"  value="${customer.city}"/>
                                    </div>
                                    <div class="col-12 mb--20">
                                        <label for="email">State:</label>
                                        <input type="text" class="mb-0 form-control" id="email" placeholder="Enter Your State Here.." name="state"  value="${customer.state}"/>
                                    </div>
                                    <div class="col-12 mb--20">
                                        <label for="email">Zip Code:</label>
                                        <input type="text" class="mb-0 form-control" id="zipCode" placeholder="Enter Your Zip code Here.." name="zipCode" value="${customer.zipcode}"/>
                                    </div>
                                    <div class="col-12 mb--20">
                                        <label for="email">Country:</label>
                                        <td align="left">
                                            <select name="country" class="btn btn-outlined" id="country">
                                            <c:forEach items="${mapCountries}" var="country">
                                               <option value="${country.value}"<c:if test="${customer.country eq country.value}">selected='selected'</c:if>>${country.key}</option>
                                            </c:forEach>
                                            </select>
                                        </td>
                                    </div>


                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-outlined">Register</button>
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
    <!--=================================
  Brands Slider
===================================== -->
    <section class="section-margin">
        <h2 class="sr-only">Brand Slider</h2>
        <div class="container">
            <div class="brand-slider sb-slick-slider border-top border-bottom" data-slick-setting='{
                                            "autoplay": true,
                                            "autoplaySpeed": 8000,
                                            "slidesToShow": 6
                                            }' data-slick-responsive='[
                {"breakpoint":992, "settings": {"slidesToShow": 4} },
                {"breakpoint":768, "settings": {"slidesToShow": 3} },
                {"breakpoint":575, "settings": {"slidesToShow": 3} },
                {"breakpoint":480, "settings": {"slidesToShow": 2} },
                {"breakpoint":320, "settings": {"slidesToShow": 1} }
            ]'>
                <div class="single-slide">
                    <img src="image/others/brand-1.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="image/others/brand-2.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="image/others/brand-3.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="image/others/brand-4.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="image/others/brand-5.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="image/others/brand-6.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="image/others/brand-1.jpg" alt="">
                </div>
                <div class="single-slide">
                    <img src="image/others/brand-2.jpg" alt="">
                </div>
            </div>
        </div>
        
    </section>
<!-- Use Minified Plugins Version For Fast Page Load -->
    <script src="js/plugins.js"></script>
    <script src="js/ajax-mail.js"></script>
    <script src="js/custom.js"></script>

</html>