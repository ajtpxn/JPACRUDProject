package com.skilldistillery.mvcbitmap.data;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jpabitmap.entities.Bitmap;

class MVCBitmapDAOTest {
	
	Bitmap bitmap;
	
	MVCBitmapDAO dao;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	}

	@BeforeEach
	void setUp() throws Exception {
		dao = new MVCBitmapDAOImpl();
	}

	@AfterEach
	void tearDown() throws Exception {
		dao = null;
	}
	
	
	
	@Test
	@DisplayName("Test for show")
	void test_show() {
		String actual = null;
		bitmap = dao.show(1);
		actual = bitmap.getName();
		assertEquals("firsttestbitmap", actual);
	}
	
	
	
	
/*
	@Test
	@DisplayName("Name of my test")
	void test() {
		String actual = null;
		List<Bitmap> bitmapList = dao.index();
		actual = bitmapList.get(0).getName();
		assertEquals("firsttestbitmap", actual);
	}

	*/
	
}
