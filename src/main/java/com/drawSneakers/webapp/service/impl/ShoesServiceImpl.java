package com.drawSneakers.webapp.service.impl;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import javax.imageio.ImageIO;
import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.drawSneakers.webapp.dao.ShoesDao;
import com.drawSneakers.webapp.entity.Shoes;
import com.drawSneakers.webapp.service.ShoesService;

@Service
public class ShoesServiceImpl implements ShoesService {

	private final ShoesDao shoesDao;

	@Inject
	public ShoesServiceImpl(ShoesDao shoesDao) {
		this.shoesDao = shoesDao;
	}

	@Override
	public List<Shoes> shoesInfo() {
		if(shoesDao.shoesInfo().size() == 0) {
			return shoesDao.shoesEndInfo();
		} else {
			return shoesDao.shoesInfo();
		}
	}

	@Override
	public void shoesImageSave(String shoesNum) {

		String mainImageUrl = "https://launches-media.endclothing.com/"+shoesNum+"_launches_hero_landscape_1.jpg";
		String thumbNailImageUrl = "https://launches-media.endclothing.com/"+shoesNum+"_launches_thumbnail.jpg";
		String savePath = "C:\\Users\\pc049\\git\\YourDraw\\src\\main\\webapp\\resources\\images\\shoes\\";
		String saveMainFileName = ""+shoesNum+"-main.jpg";
		String saveThumbNailFileName = ""+shoesNum+".jpg";
		String fileFormat = "jpg";

		System.out.println(" IMAGE URL ::: " + mainImageUrl);
		System.out.println(" IMAGE2 URL ::: " + thumbNailImageUrl);
		System.out.println(" SAVE PATH ::: " + savePath);
		System.out.println(" SAVE FILE NAME ::: " + saveMainFileName);
		System.out.println(" SAVE2 FILE NAME ::: " + saveThumbNailFileName);
		System.out.println(" FILE FORMAT ::: " + fileFormat);

		File saveMainFile = new File(savePath + saveMainFileName);
		File saveThumbNailFile = new File(savePath + saveThumbNailFileName);

		saveImage(mainImageUrl, saveMainFile, fileFormat);
		saveImage(thumbNailImageUrl, saveThumbNailFile, fileFormat);

	}

	public static void saveImage(String imageUrl, File saveFile, String fileFormat) {

		URL url = null;
		BufferedImage bi = null;

		try {
			url = new URL(imageUrl); // 다운로드 할 이미지 URL
			bi = ImageIO.read(url);
			ImageIO.write(bi, fileFormat, saveFile); // 저장할 파일 형식, 저장할 파일명

		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Shoes> pushShoesInfo() {
		return shoesDao.pushShoesInfo();
	}

	@Override
	public List<Shoes> getPastDrawList() {
		return shoesDao.getPastDrawList();
	}

	@Override
	public List<Shoes> getNextDrawList() {
		return shoesDao.getNextDrawList();
	}
}
