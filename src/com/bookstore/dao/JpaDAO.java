package com.bookstore.dao;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class JpaDAO <T> {
	protected EntityManager entityManager;
	
	public JpaDAO(EntityManager entityManager) {
		super();
		this.entityManager = entityManager;
	}
	
	public T create(T t) {
		entityManager.getTransaction().begin();
		
		entityManager.persist(t);
		entityManager.flush();
		entityManager.refresh(t);
		
		entityManager.getTransaction().commit();
		
		return t;
	}
}