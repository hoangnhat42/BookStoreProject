package com.bookstore.controller.frontend;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.controller.frontend.shoppingcart.ShoppingCart;
import com.bookstore.dao.BookDAO;
import com.bookstore.dao.CategoryDAO;
import com.bookstore.entity.Book;
import com.bookstore.entity.Category;

@WebServlet("")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HomeServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BookDAO bookDAO = new BookDAO();
		CategoryDAO categoryDAO = new CategoryDAO();
		
		List<Book> listNewBooks = bookDAO.listNewBooks();
		List<Book> listBestSellingBooks = bookDAO.listBestSellingBooks();
		List<Book> listMostFavoredBooks = bookDAO.listMostFavoredBooks();
		
		List<Category> listCategories = categoryDAO.listAll();
		Random rand = new Random();
		Integer index = rand.nextInt(listCategories.size());
		String firstCategoryName = listCategories.get(index).getName();
		List<Book> firstCategoryBooks = bookDAO.listByCategory(listCategories.get(index).getCategoryId());
		listCategories.remove((int)index);
		while (firstCategoryBooks.size() > 12) {
			Integer remoIndex = rand.nextInt(firstCategoryBooks.size());
			firstCategoryBooks.remove((int)remoIndex);
		}
		index = rand.nextInt(listCategories.size());
		String secondCategoryName = listCategories.get(index).getName();
		List<Book> secondCategoryBooks = bookDAO.listByCategory(listCategories.get(index).getCategoryId());
		while (secondCategoryBooks.size() > 12) {
			Integer remoIndex = rand.nextInt(secondCategoryBooks.size());
			secondCategoryBooks.remove((int)remoIndex);
		}
		
		
		request.setAttribute("listNewBooks", listNewBooks);
		request.setAttribute("listBestSellingBooks", listBestSellingBooks);
		request.setAttribute("listMostFavoredBooks", listMostFavoredBooks);
		request.setAttribute("firstCategoryName", firstCategoryName);
		request.setAttribute("secondCategoryName", secondCategoryName);
		request.setAttribute("firstCategoryBooks", firstCategoryBooks);
		request.setAttribute("secondCategoryBooks", secondCategoryBooks);
		
		String homepage = "frontend/index.jsp";
		RequestDispatcher dispatch = request.getRequestDispatcher(homepage);
		dispatch.forward(request, response);
	}
}
