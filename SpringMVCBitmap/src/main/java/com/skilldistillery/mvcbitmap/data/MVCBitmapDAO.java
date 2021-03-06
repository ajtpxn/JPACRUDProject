package com.skilldistillery.mvcbitmap.data;

import java.util.List;

import com.skilldistillery.jpabitmap.entities.Bitmap;

public interface MVCBitmapDAO {

	Bitmap show(int id);

	List<Bitmap> index();

	void create(Bitmap bitmap);

	void update(int bid, Bitmap bitmap);

	void destroy(int bid);


}
