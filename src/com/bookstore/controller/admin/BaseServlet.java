package com.bookstore.controller.admin;


import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;


public abstract class BaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected EntityManagerFactory entityMangerFactory;
	protected EntityManager entityManager;
	
	@Override
	public void init() throws ServletException {
		entityMangerFactory = Persistence.createEntityManagerFactory("BookStoreWebsite");
		entityManager = entityMangerFactory.createEntityManager();
	}
	
	@Override
	public void destroy() {
		entityManager.close();
		entityMangerFactory.close();
	}
	
	
	
	
}
