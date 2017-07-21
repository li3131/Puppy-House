package com.igo.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.igo.biz.DogBiz;
import com.igo.entity.Dogs;
import com.igo.entity.Pager;
import com.igo.entity.Types;
import com.igo.entity.Users;
import com.opensymphony.xwork2.ActionSupport;

public class DogAction extends ActionSupport implements RequestAware,
		SessionAware {
	private Pager pager;

	public Pager getPager() {
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}

	private Dogs dog;

	public Dogs getDog() {
		return dog;
	}

	public void setDog(Dogs dog) {
		this.dog = dog;
	}

	DogBiz dogBiz;

	public void setDogBiz(DogBiz dogBiz) {
		this.dogBiz = dogBiz;
	}

	Map<String, Object> session;
	Map<String, Object> request;

	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session = session;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		// TODO Auto-generated method stub
		this.request = request;
	}

	public String toShowAdopt() throws Exception {
		int curPage = 1;
		if (pager != null) {
			curPage = pager.getCurPage();
		}
		List dogList = null;
		if (dog != null) {
			dogList = dogBiz.getDogByCondition(dog, curPage);
			pager = dogBiz.getPagerOfDog(dog);
			if ((dog.getTypes() != null) && (dog.getTypes().getTid() != null)) {
				request.put("tid", new Integer(dog.getTypes().getTid()));
			}
			if ((dog.getName() != null) && (!dog.getName().equals(""))) {
				request.put("name", dog.getName());
			}
		} else {
			dogList = dogBiz.getAllDog(curPage);
			pager = dogBiz.getPagerOfAllDog();
		}
		pager.setCurPage(curPage);
		request.put("dogList", dogList);
		List typeList = dogBiz.getAllTypes();
		request.put("typeList", typeList);
		return "toShowAdopt";
	}

	private File image;

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	private String imageFileName;

	private String imageContentType;

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

	private String savePath;

	public String getSavePath() {
		return savePath;
	}

	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}

	// 要将图片上传
	/*
	 * public String upload() { // 获取上传后的文件的真实目录 String path =
	 * ServletActionContext.getServletContext().getRealPath( this.savePath); //
	 * 获得上传文件的真实路径 String f_name = path + File.separator +
	 * this.getImageFileName(); // 创建输入和输出流 BufferedInputStream bis = null;
	 * BufferedOutputStream bos = null;
	 * System.out.println(this.getImageFileName()); System.out.println(path);
	 * System.out.println("1"); try { bis = new BufferedInputStream(new
	 * FileInputStream(image)); bos = new BufferedOutputStream(new
	 * FileOutputStream( new File(f_name))); byte[] buff = new byte[(int)
	 * image.length()]; int len = 0; while ((len = bis.read(buff)) != -1) {
	 * bos.write(buff, 0, len); } } catch (Exception e) { e.printStackTrace();
	 * this.addFieldError("error", "图片上传出错"); } finally { try { if (bis != null)
	 * { bis.close(); bis = null; } if (bos != null) { bos.close(); bos = null;
	 * } } catch (Exception e) { e.printStackTrace(); } } return "upload"; }
	 */
	private String types;

	public String getTypes() {
		return types;
	}

	public void setTypes(String types) {
		this.types = types;
	}

	public String generateFileName(String fileName) {
		String formatDate = new SimpleDateFormat("yyMMddHHmmss")
				.format(new Date());
		int random = new Random().nextInt(10000);
		int position = fileName.lastIndexOf(".");
		String extension = fileName.substring(position);
		return formatDate + random + extension;
	}

	public String addAdopt() throws IOException {
		if (imageFileName != null) {
			String targetDirectory = ServletActionContext.getServletContext()
					.getRealPath(savePath);
			String targetFileName = generateFileName(imageFileName);
			File target = new File(targetDirectory, targetFileName);
			FileUtils.copyFileToDirectory(image, target);
			Types t = new Types();
			t.setTname(types);
			if (dogBiz.searchTypes(t) != null) {
				dog.setTypes(dogBiz.searchTypes(t));
				System.out.println(dogBiz.searchTypes(t).getTname());
			} else {
				t.setTname(types);
				dogBiz.addTypes(t);
				dog.setTypes(t);
			}
			dog.setImage(targetFileName);
			dogBiz.addDog(dog);
		}

		return "success";
	}

	public String toShowDetail() {
		Users user = (Users) session.get("user");
		List list = dogBiz.searchDogsByUid(user.getLoginName());
		request.put("list", list);
		return "showdetail";
	}

	public String toShowAdoptDetail() {
		Users user = (Users) session.get("user");
		List adoptList = dogBiz.searchAdoptByUid(user.getUid());
		request.put("adoptList", adoptList);
		return "showadoptdetail";
	}
}
