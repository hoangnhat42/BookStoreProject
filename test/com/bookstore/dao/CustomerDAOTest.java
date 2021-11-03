package com.bookstore.dao;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.bookstore.entity.Customer;

public class CustomerDAOTest {
	private static CustomerDAO customerDao;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		customerDao = new CustomerDAO();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		customerDao.close();
	}

	@Test
	public void testCreateCustomer() {
		Customer customer = new Customer();
		customer.setEmail("sang123@gmail.com");
		customer.setFirstname("Quin");
		customer.setLastname("Gold");
		customer.setCity("Evanston");
		customer.setState("Illinous");
		customer.setCountry("United States");
		customer.setAddressLine1("100 North Avenue");
		customer.setAddressLine2("Apt 231");
		customer.setPassword("123");
		customer.setPhone("18001890");
		customer.setZipcode("300100");
		
		Customer savedCustomer = customerDao.create(customer);
		assertTrue(savedCustomer.getCustomerId() > 0);
	}

	@Test
	public void testGet() {
		Integer customerId = 23;
		Customer customer = customerDao.get(customerId);
		
		assertNotNull(customer);
	}

	@Test
	public void testUpdateCustomer() {
		Customer customer = customerDao.get(1);
		String fullName = "Tommy";
		customer.setFirstname(fullName);
		
		Customer updatedCustomer = customerDao.update(customer);
		assertTrue(updatedCustomer.getFirstname().equals(fullName));
	}

	@Test
	public void testDeleteCustomer() {
		Integer customerId = 22;
		customerDao.delete(customerId);
		Customer customer = customerDao.get(11);
		assertNull(customer);
	}
	
	@Test
	public void testListAll() {
		List<Customer> listCustomers = customerDao.listAll();
		
		for (Customer customer : listCustomers) {
			System.out.println(customer.getFullname());
		}
		
		assertFalse(listCustomers.isEmpty());
	}
	
	@Test 
	public void testCount() {
		long totalCustomers = customerDao.count();
		
		assertEquals(2,totalCustomers);
	}
	
	@Test
	public void testFindByEmail() {
		String email = "tom@gmail.com";
		Customer customer = customerDao.findByEmail(email);
		
		assertNotNull(customer);
	}
	
	@Test
	public void testCheckLoginSuccess() {
		String email = "sang@gmail.com";
		String password = "123";
		
		Customer customer = customerDao.checkLogin(email, password);
		
		assertNotNull(customer);
	}
	
	@Test
	public void testCheckLoginFail() {
		String email = "tom@gmail.com";
		String password = "passtomword";
		
		Customer customer = customerDao.checkLogin(email, password);
		
		assertNull(customer);
	}

}
