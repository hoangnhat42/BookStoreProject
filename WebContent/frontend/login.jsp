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
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
   	<script type="text/javascript" src="js/jquery.validate.min.js"></script>
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
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Home</a></li>
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
                    <div class="col-sm-12 col-md-12 col-lg-6 col-xs-12">
                        <form action="login" id="loginForm" method="post">
                            <div class="login-form">
                                <h4 class="login-title">Customer Login</h4>
                                <c:if test="${message != null}">
							        <div align="center">
                               			<p><span class="font-weight-bold"><i>${message}</i></span></p>
							        </div>
							    </c:if>
                                <div class="row">
                                    <div class="col-md-12 col-12 mb--15">
                                        <label for="email">Enter your email address here...</label>
                                        <input class="mb-0 form-control" type="text" name="email" id="email" placeholder="Enter you email address here...">
                                    </div>
                                    <div class="col-12 mb--20">
                                        <label for="password">Password</label>
                                        <input class="mb-0 form-control" type="password" name="password" id="password" placeholder="Enter your password">
                                    </div>
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-outlined">Login</button>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a>Don't have an account?&nbsp;<a href="register" class="font-weight-bold green-hover">Register</a></a>
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

    <!-- Use Minified Plugins Version For Fast Page Load -->
    <script type="text/javascript">
	     $(document).ready(function(){
		 $("#loginForm").validate({
			rules: {
				email: {
					required: true,
					email: true
				},
				password:"required",
			},
			messages: {
				email: {
					required: "Please enter email",
					email: "Please enter an valid email address"
				},
				password:"Please enter password"
			}
		});
		
	});
	</script>
    <script src="js/plugins.js"></script>
    <script src="js/ajax-mail.js"></script>
    <script src="js/custom.js"></script>
</body>

</html>