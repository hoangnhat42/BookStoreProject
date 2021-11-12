package com.bookstore.controller.admin.category;


import com.bookstore.service.CategoryServices;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/admin/new_category")
public class NewCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
    public NewCategoryServlet() {
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		CategoryServices categoryServices = new CategoryServices(request, response);
		categoryServices.showCategoryNewForm();
	}

}
