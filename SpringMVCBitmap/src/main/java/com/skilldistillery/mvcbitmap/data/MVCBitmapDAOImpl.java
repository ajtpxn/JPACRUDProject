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
	public void update(int id, Bitmap bitmap) {
		System.out.println("Input bitmap id: "+bitmap.getId());
		System.out.println("Input id (for find): "+id);
		Bitmap managedBitmap = em.find(Bitmap.class, id);
		managedBitmap.setName(bitmap.getName());
		managedBitmap.setDescription(bitmap.getDescription());
		managedBitmap.setBitmapblob(bitmap.getBitmapblob());
		System.out.println("Managed Bitmap info: "+managedBitmap);
	}
	
	@Override
	public void destroy(int bid) {
		Bitmap bitmap = em.find(Bitmap.class, bid);
		em.remove(bitmap);
	}

}
