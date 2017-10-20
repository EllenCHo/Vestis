package com.vestis.service;

import static marvin.MarvinPluginCollection.boundaryFill;
import static marvin.MarvinPluginCollection.morphologicalDilation;
import static marvin.MarvinPluginCollection.*;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

/*
import org.opencv.core.Core;
import org.opencv.core.CvType;
import org.opencv.core.Mat;
import org.opencv.core.Point;
import org.opencv.core.Scalar;
import org.opencv.core.Size;
import org.opencv.highgui.Highgui;
import org.opencv.imgproc.Imgproc;*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.vestis.repository.FileUploadDao;
import com.vestis.vo.ImgVo;

import marvin.MarvinDefinitions;
import marvin.color.MarvinColorModelConverter;
import marvin.image.MarvinImage;
import marvin.io.MarvinImageIO;
import marvin.math.MarvinMath;

@Service
public class FileUploadService {
	@Autowired
	private FileUploadDao uploadDao;

	public int restore(MultipartFile file) {
		ImgVo imgVo = new ImgVo();

		// 파일저장할 위치
		String saveDir = "D:\\javaStudy\\file\\";

		// 원 파일이름 찾기
		String orgName = file.getOriginalFilename();
		System.out.println("orgName: " + orgName);
		imgVo.setName(orgName);

		// 확장자찾기
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println("exName: " + exName);
		imgVo.setType(exName);

		// 파일사이즈 찾기
		long fileSize = file.getSize();
		System.out.println("fileSize: " + fileSize);
		imgVo.setSizes(fileSize);

		// 유니크한 저장파일이름 만들기
		String saveName = System.currentTimeMillis() + UUID.randomUUID().toString()+".png";
		System.out.println("saveName: " + saveName);
		imgVo.setDbName(saveName);

		// 파일패스=저장되있는 위치
		String filePath = saveDir + saveName;
		System.out.println("filePath: " + filePath);
		imgVo.setAddress(filePath);

		// 배경을 제거한 후에 저장
		try {
			BufferedImage bfImg = ImageIO.read(file.getInputStream());
			System.out.println(bfImg);
			MarvinImage image = new MarvinImage(bfImg);
			String path = new File(URI.create("file:///C:/Users/BIT/git/Vestis/marvin/plugins/image/").getPath()).getAbsolutePath() + "/";
			MarvinDefinitions.setImagePluginPath(path);
			// MarvinImage image =
			// MarvinImageIO.loadImage("D:/javastudy/workspace/marvin/images/123.jpg");
			MarvinImage bin = MarvinColorModelConverter.rgbToBinary(image, 110);
			morphologicalDilation(bin.clone(), bin, MarvinMath.getTrueMatrix(4, 4));
			MarvinImage mask = MarvinColorModelConverter.binaryToRgb(bin);
			boundaryFill(mask.clone(), mask, 5, 5, new Color(255, 0, 255));

			for (int y = 0; y < mask.getHeight(); y++) {
				for (int x = 0; x < mask.getWidth(); x++) {
					if (mask.getIntColor(x, y) == 0xFFFF00FF) {
						image.setIntColor(x, y, 0, 255, 255, 255);
					}
				}
			}

			scale(image.clone(), image, 400, 400); // 500 and 400 are the new width and height.	
			MarvinImageIO.saveImage(image, filePath);
			System.out.println("저장완료");
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		/*try {
			byte[] fileDate = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileDate);
			bout.flush();
			if (bout != null) {
				bout.close();
			}
		} catch (IOException e) {
			e.printStackTrace();
		}*/

		/*
		 * Mat hsvImg = new Mat(); List<Mat> hsvPlanes = new ArrayList<>(); Mat
		 * thresholdImg = new Mat();
		 * 
		 * int thresh_type = Imgproc.THRESH_BINARY_INV;
		 * 
		 * Mat frame = Highgui.imread(filePath);
		 * 
		 * hsvImg.create(frame.size(), CvType.CV_8U); Imgproc.cvtColor(frame, hsvImg,
		 * Imgproc.COLOR_BGR2HSV); Core.split(hsvImg, hsvPlanes);
		 * 
		 * // get the average hue value of the image //double threshValue =
		 * getHistAverage(hsvImg, hsvPlanes.get(0));
		 * 
		 * Imgproc.threshold(hsvPlanes.get(0), thresholdImg, 170, 179.0, thresh_type);
		 * 
		 * Imgproc.blur(thresholdImg, thresholdImg, new Size(5, 5));
		 * 
		 * // dilate to fill gaps, erode to smooth edges Imgproc.dilate(thresholdImg,
		 * thresholdImg, new Mat(), new Point(-1, -1), 1); Imgproc.erode(thresholdImg,
		 * thresholdImg, new Mat(), new Point(-1, -1), 3);
		 * 
		 * Imgproc.threshold(thresholdImg, thresholdImg, 170, 179.0,
		 * Imgproc.THRESH_BINARY);
		 * 
		 * // create the new image Mat foreground = new Mat(frame.size(),
		 * CvType.CV_8UC3, new Scalar(255, 255, 255)); frame.copyTo(foreground,
		 * thresholdImg);
		 * 
		 * Highgui.imwrite(filePath, foreground);
		 */
		/*
		 * IplImage image = cvLoadImage(filePath); if (image != null) { cvSmooth(image,
		 * image); cvSaveImage(filePath, image); cvReleaseImage(image); }
		 */

		System.out.println("테스트중");
		int imgNo = uploadDao.upload(imgVo);

		return imgNo;

	}

	public void add(int valh, int huserNo, int imgNo) {
		uploadDao.add(valh, huserNo, imgNo);
	}

	// 옷 타입과 사용자 번호로 옷리스트를 가져오는 함수
	public List<ImgVo> list(int clothNo, int userNo) {// 보내줄 조건 없고 리스트로 받아
		return uploadDao.getImglist(clothNo, userNo);
	}
	
	public void removeCloth(int no) {
		uploadDao.removeCloth(no);
	}
}
