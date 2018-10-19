package com.skilldistillery.jpabitmap.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class BitmapTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	Bitmap bitmap;


	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("Bitmap");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	public void setUp() throws Exception {
		em = emf.createEntityManager();
		bitmap = em.find(Bitmap.class, 1);
	}

	@AfterEach
	public void tearDown() throws Exception {
		em.close();
	}

	@Test
	@DisplayName("This is where I am testing the Bitmap Entity for the first time")
	void test() {
		assertEquals("firsttestbitmap", bitmap.getName());
	}

}
