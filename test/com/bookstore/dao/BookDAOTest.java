package com.bookstore.dao;

import static org.junit.Assert.*;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityNotFoundException;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.bookstore.entity.Book;
import com.bookstore.entity.Category;

public class BookDAOTest {
	private static BookDAO bookDao;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		bookDao = new BookDAO();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		bookDao.close();
	}

	@Test
	public void testCreateBook() throws ParseException, IOException {
		Book newBook = new Book();
		
		Category category = new Category("Test");
		category.setCategoryId(23);
		newBook.setCategory(category);
		
		newBook.setTitle("Test (6nd Edition)");
		newBook.setAuthor("Joshua Bloch");
		newBook.setDescription("New coverage of generics, enums, annotations, autoboxing");
		newBook.setPrice(38.87f);
		newBook.setImage("https://i.imgur.com/OBV78Nf.jpg");
		
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date publishDate = dateFormat.parse("28/05/2008");
		newBook.setPublishDate(publishDate);
			
		
		Book createdBook = bookDao.create(newBook);
		
		assertTrue(createdBook.getBookId() > 0);
	}
	
	
	@Test
	public void testCreate2ndBook() throws ParseException, IOException {
		Book newBook = new Book();
		
		Category category = new Category("Covers Spring");
		category.setCategoryId(23);
		newBook.setCategory(category);
		
		newBook.setTitle("Spring in Action: Covers Spring 4");
		newBook.setAuthor("Craig Walls");
		newBook.setDescription("Spring in Action, Fourth Edition is a hands-on guide to the Spring Framework.");
		newBook.setPrice(33.99f);
		newBook.setImage("https://i.imgur.com/OBV78Nf.jpg");
		
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date publishDate = dateFormat.parse("28/11/2014");
		newBook.setPublishDate(publishDate);
		
		
		Book createdBook = bookDao.create(newBook);
		
		assertTrue(createdBook.getBookId() > 0);
	}
	
	@Test
	public void testUpdateBook() throws ParseException, IOException {
		Book existBook = new Book();
		existBook.setBookId(32);
		
		Category category = new Category("Java Core Update");
		category.setCategoryId(23);
		existBook.setCategory(category);
		
		existBook.setTitle("Effective Java (5rd Edition)");
		existBook.setAuthor("Joshua Bloch");
		existBook.setDescription("New coverage of generics, enums, annotations, autoboxing");
		existBook.setPrice(44f);
		existBook.setImage("https://i.imgur.com/OBV78Nf.jpg");
		
		DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date publishDate = dateFormat.parse("28/05/2008");
		existBook.setPublishDate(publishDate);
		
		
		Book updatedBook = bookDao.update(existBook);
		
		assertEquals(updatedBook.getTitle(), "Effective Java (5rd Edition)");
	}
	
	@Test(expected = EntityNotFoundException.class)
	public void testDeleteBookFail() {
		Integer bookId = 100;
		bookDao.delete(bookId);
		
		assertTrue(true);
	}
	
	@Test
	public void testDeleteBookSuccess() {
		Integer bookId = 32;
		bookDao.delete(bookId);
		
		assertTrue(true);
	}
	
	@Test
	public void testGetBookFail() {
		Integer bookId = 99;
		Book book = bookDao.get(bookId);
		
		assertNull(book);
	}
	
	@Test
	public void testGetBookSuccess() {
		Integer bookId = 34;
		Book book = bookDao.get(bookId);
		
		assertNotNull(book);
	} 
	
	@Test
	public void testListAll() {
		List<Book> listBooks = bookDao.listAll();
		
		for (Book aBook : listBooks) {
			System.out.println(aBook.getTitle() + " - " + aBook.getAuthor());
		}
		assertFalse(listBooks.isEmpty());		
	}
	
	@Test
	public void testFindByTitleNotExist() {
		String title = "Think in Java";
		Book book = bookDao.findByTitle(title);
		
		assertNull(book);
	}
	
	@Test
	public void testFindByTitleExist() {
		String title = "Spring in Action: Covers Spring 4";
		Book book = bookDao.findByTitle(title);
		
		System.out.println(book.getAuthor());
		System.out.println(book.getPrice());
		
		assertNotNull(book);
	}
	
	@Test
	public void testCount() {
		long totalBooks = bookDao.count();
		
		assertEquals(totalBooks, 3);
	}
	
	@Test
	public void testListByCategory() {
		int categoryId = 11;
		
		List<Book> listBooks = bookDao.listByCategory(categoryId);
		
		assertTrue(listBooks.size() > 0);
	}
	
	@Test
	public void testListNewBooks() {
		List<Book> listNewBooks = bookDao.listNewBooks();
		for (Book aBook : listNewBooks) {
			System.out.println(aBook.getTitle() + " - " + aBook.getPublishDate());
		}
		assertEquals(listNewBooks.size(), 4);
	}
	
	
	
	@Test
	public void testSearchBookInTitle() {
		String keyword = "Java";
		List<Book> result = bookDao.search(keyword);
		
		for (Book aBook : result) {
			System.out.println(aBook.getTitle());
		}
		
		assertEquals(3, result.size());
	}
	
	@Test
	public void testSearchBookInAuthor() {
		String keyword = "Kathy";
		List<Book> result = bookDao.search(keyword);
		
		for (Book aBook : result) {
			System.out.println(aBook.getTitle());
		}
		
		assertEquals(1, result.size());
	}
	
	@Test
	public void testSearchBookInDescription() {
		String keyword = "New coverage of generics";
		List<Book> result = bookDao.search(keyword);
		
		for (Book aBook : result) {
			System.out.println(aBook.getTitle());
		}
		
		assertEquals(1, result.size());
	}
	
	@Test
	public void testCountByCategory() {
		int categoryId = 11;
		long numOfBooks = bookDao.countByCategory(categoryId);
		
		assertEquals(numOfBooks, 2);
	}
	
	@Test
	public void testListBestSellingBooks() {
		List<Book> topBestSellingBooks = bookDao.listBestSellingBooks();
		
		for (Book book : topBestSellingBooks) {
			System.out.println(book.getTitle());
		}
		
		assertEquals(2, topBestSellingBooks.size());
	}
	
	@Test
	public void testMostFavoredBooks() {
		List<Book> topFavoredBooks = bookDao.listMostFavoredBooks();
		
		for (Book book : topFavoredBooks) {
			System.out.println(book.getTitle());
		}
		
		assertEquals(2, topFavoredBooks.size());
	}
	
	
}
