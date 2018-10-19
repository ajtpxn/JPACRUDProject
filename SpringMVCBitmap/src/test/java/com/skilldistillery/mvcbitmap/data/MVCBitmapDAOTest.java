package com.skilldistillery.mvcbitmap.data;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jpabitmap.entities.Bitmap;

class MVCBitmapDAOTest {
	
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
	void test() {
		String actual = null;
		
		
		
		List<Bitmap> bitmapList = dao.index();
		
		actual = bitmapList.get(0).getName();
		
		assertEquals("firsttestbitmap", actual);
	}

}
