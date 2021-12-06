<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Admin Login</title>
   <link rel="stylesheet" href="../css/styleadmin.css" >
   <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
   <script type="text/javascript" src="../js/jquery.validate.min.js"></script>
   
   <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            font-family: "Open Sans";
            color: #fff;
            font-weight: bold;
        }
        section{
            background: url("../images/bg_admin.jpg");
            height: 100vh;
            width: 100%;
            background-size: cover;
            background-position: center center;
        }
        .form-container{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 380px;
            padding: 50px 30px;
            border-radius: 10px;
            box-shadow:7px 7px 60px #000;
        }
        h1{
            color: #ffffff;
            font-size: 2em;
            text-transform: uppercase;
            text-align: center;
            margin-bottom: 2rem;
        }
        .control input{
            padding: 30px;
            font-size: 20px;
            display: block;
            width: 100%;
            color:#000;
            background: #ddd;
            outline: none;
            border: none;
            margin: 1em 0;

        }         
        .control .btn{
            color: #fff;
            text-transform: uppercase;
            background: crimson;
            opacity: .7;
            transition:opacity .3s ease;
        }
        .btn:focus{
            opacity: 1;
        }
        p{
            text-align: center;
        }
        a{
            text-decoration: none;
            color: #fff;
            opacity: .7;
        }
        a:hover{
            opacity: 1;
        }
    </style>
</head>
<body>
    <section>
        <div class="form-container">
            <h1>Admin Login</h1>
            <c:if test="${message != null}">
                <div align="center">
                   <h4 class="message">${message}</h4>
                </div>
            </c:if>
        <form id="loginForm" action="login" method="post">
            <div class="control">
            <label for="name">Email</label>
            <input type="text" name="email" id="email" class="usid" >
            </div>
            <div class="control">
            <label for="psw">Password</label>
            <input type="password" name="password" id="password" class="usid">
            </div>
            <span><input type="checkbox"> Remember me</span>
            <div class="control">
          
            <button type="submit"  class="button">Login</button>
            </div>
        </form>
       
        </div>
    </section>
     
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
</body>
</html>