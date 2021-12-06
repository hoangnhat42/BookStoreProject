<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create New Customer</title>
    
    <link rel="stylesheet" href="../css/styleadmin.css" >
    
</head>
<div align="center">
    <div>
       <a href="${pageContext.request.contextPath}/admin/">
        <img src="../images/logons.jpg"/>
       </a>
    </div>
    <div>
         Welcome, <c:out value="${sessionScope.useremail}"/> | <a href="logout">Logout</a>
         <br/><br/>
    </div>
    <div id="headermenu">
         <div>
              <a href="list_users">
                <img src="../images/User.png" /><br/> Users
              </a>
         </div>
         <div>
              <a href="list_category">
                <img src="../images/category.png" /><br/> Categories
              </a>
         </div>
         <div>
              <a href="list_books">
                <img src="../images/book.png" /><br/>Books
               </a>
         </div>
         <div >
              <a href="list_customer">
              <img src="../images/customer.png" /><br/> Customers
              </a>
         </div>
         <div >
               <a href="list_review">
               <img src="../images/review.png" /><br/> Reviews
               </a>
         </div>
         <div>
             <a href="list_order">
             <img src="../images/order.png" /><br/> orders
             </a>
         </div>  
    </div>
</div>
