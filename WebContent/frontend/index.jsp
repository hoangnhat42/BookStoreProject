<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ONLINE BOOKSTORE</title>
<link rel="stylesheet" href="css/style.css" >
</head>
<body>
	<jsp:directive.include file="header.jsp"/>
    <div class='center'>
         <div >
         <h2>New Books:</h2>
         <c:forEach items="${listNewBooks}" var="book">
         <div class="book">
            <div>
             <a href="view_book?id=${book.bookId}">
               <img class="book-small" src="data:image/jpg;base64, ${book.base64Image}" />
              </a>
            </div>
            <div>
               <a href="view_book?id=${book.bookId}">
                  <b>${book.title}</b>
               </a>
            </div>
            <div>
            	 <jsp:directive.include file="book_rating.jsp"/>
            </div>
            <div><i>by ${book.author}</i></div>
            <div><b>$${book.price}</b></div>
         </div>
       </c:forEach>
    </div>
      <div class="next-row">
        <h2>Best-Selling Books:</h2>
         <c:forEach items="${listBestSellingBooks}" var="book">
             <jsp:directive.include file="book_group.jsp" />
       </c:forEach>
      </div>
      <div class="next-row">
        <h2>Most-favored Books:</h2>
        <c:forEach items="${listMostFavoredBooks}" var="book">
           <jsp:directive.include file="book_group.jsp" />
       </c:forEach>
      </div>
	
<!--BTN CONTACT //End of Tawk.to Script-->
<div class="fab-wrapper">
   <input id="fabCheckbox" type="checkbox" class="fab-checkbox">
   <label class="fab" for="fabCheckbox">
      <i class="icon-cps-fab-menu"></i>
      <!-- <i class="icon-cps-close"></i> -->
   </label>
   <div class="fab-wheel">
      <a class="fab-action fab-action-1" href="https://nhatsang.tech/" rel="nofollow" target="_blank">
         <span class="fab-title">Tìm công ty</span>
         <div class="fab-button fab-button-1"><i class="icon-cps-local"></i></div>
      </a>
      <a class="fab-action fab-action-2" href="tel:0762539444" rel="nofollow">
         <span class="fab-title">Gọi trực tiếp</span>
         <div class="fab-button fab-button-2"><i class="icon-cps-phone"></i></div>
      </a>
      <a class="fab-action fab-action-3" href="https://www.facebook.com/" target="_blank" rel="nofollow">
         <span class="fab-title">Chat ngay</span>
         <div class="fab-button fab-button-3"><i class="icon-cps-chat"></i></div>
      </a>
      <a class="fab-action fab-action-4" href="https://zalo.me/" target="_blank" rel="nofollow">
         <span class="fab-title">Chat trên Zalo</span>
         <div class="fab-button fab-button-4"><i class="icon-cps-chat-zalo"></i></div>
      </a>
   </div>
   <div class="suggestions-chat-box hidden" style="display: none;">
      <div class="box-content d-flex justify-content-around align-items-center">
         <i class="fa fa-times-circle" aria-hidden="true" id="btnClose" onclick="jQuery('.suggestions-chat-box').hide()"></i>
         <p class="mb-0 font-14">Liên hệ ngay <i class="fa fa-hand-o-right" aria-hidden="true"></i></p>
      </div>
   </div>
   <div class="devvn_bg"></div>
</div>
	      
      
    </div>
    <jsp:directive.include file="footer.jsp"/>
</body>
</html>