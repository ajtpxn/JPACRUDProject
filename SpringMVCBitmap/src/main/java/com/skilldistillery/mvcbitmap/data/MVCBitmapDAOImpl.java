package com.skilldistillery.mvcbitmap.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.skilldistillery.jpabitmap.entities.Bitmap;

@Transactional
@Repository
public class MVCBitmapDAOImpl implements MVCBitmapDAO {
	
	
	
	@PersistenceContext
	  private EntityManager em;

	@Override
	public Bitmap show(int id) {
		Bitmap bitmap = em.find(Bitmap.class, id);
		return bitmap;
	}

	@Override
	public List<Bitmap> index() {
		String query = "SELECT b FROM Bitmap b";
		List<Bitmap> bitmapList = em.createQuery(query, Bitmap.class).getResultList();
		return bitmapList;
	}
	
	@Override
	public void create(Bitmap bitmap) {
		em.persist(bitmap);
	}
	
	@Override
	public void destroy(Bitmap bitmap) {
		em.remove(bitmap);
	}

}
