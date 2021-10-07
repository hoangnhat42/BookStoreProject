package com.bookstore.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.bookstore.dao.UserDAO;
import com.bookstore.entity.Users;

public class UserServices {
	private EntityManagerFactory entityMangerFactory;
	private EntityManager entityManager;
	private UserDAO userDAO;
		
	public UserServices() {	
		entityMangerFactory = Persistence.createEntityManagerFactory("BookStoreWebsite");
		entityManager = entityMangerFactory.createEntityManager();
		userDAO = new UserDAO(entityManager);		
	}

	public List<Users> listUser() {
		List<Users> listUsers = userDAO.listAll();
		
		return listUsers;
	}
}
