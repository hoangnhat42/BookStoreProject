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
    <title>Create New Book
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
            <img src="../images/logo-lg.png" alt="Comapny logo">
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
        
        <div class="main-title">
            <h2 class="pageheading">
                <c:if test="${book != null}">Edit Book</c:if>
                <c:if test="${book == null}">Create New Book</c:if>
            </h2>
        </div>
        </div>
        <div class="main-content">
            

            <div class="row">
                <c:if test="${book != null}">
	<form action="update_book" method="post" id="bookForm" enctype="multipart/form-data">
	<input type="hidden" name="bookId" value="${book.bookId}" />
	</c:if>
		<c:if test="${book == null}">
		<form action="create_book" method="post" id="bookForm" enctype="multipart/form-data">
		</c:if>
                <div class="col-12">
            
                    <form action="emailList" method="post" class="container box">
                        <input type="hidden" name="action" value="add">
                        <table class="table table-borderless">
                            <tbody>
                                <tr>
                                    <td>Category:</td>
                                    <td><label class="custom-select margintop-2">
                                        <select name="category">
                                             <c:forEach items="${listCategory}" var="category">
                                             <c:if test="${category.categoryId eq book.category.categoryId}">
                                                   <option value ="${category.categoryId}" selected>
                                             </c:if>
                                             <c:if test="${category.categoryId ne book.category.categoryId}">
                                                   <option value ="${category.categoryId}">
                                             </c:if>
                                                    ${category.name}
                                             </option>
                                             </c:forEach>
                                        </select>
                                        </label>
                                    </td>
                                </tr>

                                <tr>
                                
                                    <td class="text-right td-label"><label
                                        for="customer-name" class= "">Title:</label></td>
                                    <td><input type="text" class="input-focus usid"
                                        name="title" id="title" value="${book.title}"></td>
                                </tr>
                                <tr>
                                <tr>
                                    <td class="text-right td-label"><label
                                        for="customer-name" class= "">Author:</label></td>
                                    <td><input type="text" class="input-focus usid"
                                        name="author" id="author" value="${book.author}"></td>
                                </tr>
                                <tr>
                                    <td class="text-right td-label"><label
                                        for="customer-name" class= "">Publish Date:</label></td>
                                    <td><input type="text" class="input-focus usid"
                                        name="publishDate" id="publishDate" value="<fmt:formatDate pattern='dd/MM/yyyy' value='${book.publishDate}' />"></td>
                                </tr>
                                <tr>
                                    <td class="text-right td-label"><label
                                        for="customer-name" class= "">Book Image:</label></td>
                                    <td><input type="text" class="input-focus usid"
                                        name="bookImage" id="bookImage" value='${book.image}'>
                                        <img id = "thumbnail" alt="Image Preview" style="width:20%; margin-top:10px"
                                        src="${book.image}"
                                      /></td>
                                </tr>
                                <tr>
                                    <td class="text-right td-label"><label
                                        for="customer-name" class= "">Price:</label></td>
                                    <td><input type="text" class="input-focus usid"
                                        name="price" id="price" value="${book.price}"></td>
                                </tr>
                                <tr>
                                    <td class="text-right td-label"><label
                                        for="customer-name" class= "">Description:</label></td>
                                    <td>
                                        <textarea class="input-focus usid" rows="5" cols="50" name="description" id="description">${book.description}</textarea></td>
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
<script type="text/javascript">

    $(document).ready(function(){
        $("#publishDate").datepicker();
        $('#description').richText();
        
        $("#bookImage").change(function() {
            showImageThumbnail(this);
        });
        
        $("#bookForm").validate({
            rules: {
                
                category: "required",
                title: "required",
                author: "required",
                publishDate: "required",
                
                <c:if test="${book == null}">
                bookImage: "required",
                </c:if>
                
                price: "required",
                description: "required"
                
            },
            
            messages: {
                
                category:"Please select a category for the book",
                title: "Please enter title of the book",
                author:"Please enter author of the bool",
                publishDate:"Please enter publish date of the bool",
                bookImage:"Please choose an image of the book",
                price:"Please enter price of the book",
                description:"Please enter description of the book"
                
            }
        });
        
        $("#buttonCancel").click(function(){
            history.go(-1);
        });
    });
    
    function showImageThumbnail(fileInput) {
        var file = fileInput.files[0];
        
        var reader = new FileReader();
        
        reader.onload = function(e) {
            $("#thumbnail").attr("src", e.target.result);
        };
        
        reader.readAsDataURL(file);
    }
    
    </script>
    
</html>