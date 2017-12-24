package com.etcxm.util;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase.FileSizeLimitExceededException;
import org.apache.commons.fileupload.FileUploadBase.SizeLimitExceededException;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

import com.etcxm.exception.UploadException.UploadException;

public class UploadUtils {
	
	private UploadUtils(){
		
	}
	public static void upload(HttpServletRequest req){
		
		boolean isMultipart = ServletFileUpload.isMultipartContent(req);
		if(!isMultipart){
			return;
		}
		try {
			
		    DiskFileItemFactory factory = new DiskFileItemFactory();
			//设置缓存位置默认缓存文件大小不能小于10kb
			factory.setRepository(new File("D:/"));
			ServletFileUpload upload = new ServletFileUpload(factory);
			
			//设置单个文件大小不超过100K
			upload.setFileSizeMax(120*1024);
			//出现溢出异常org.apache.commons.fileupload.FileUploadBase$FileSizeLimitExceededException
			//设置多个文件上传不能超过150
			//org.apache.commons.fileupload.FileUploadBase$SizeLimitExceededException
			/*upload.setSizeMax(150*1024);*/
			List<FileItem> items = upload.parseRequest(req);
			System.out.println(items.size());
			for (FileItem fileItem : items) {
				if(fileItem.isFormField()){ //普通控件
					
				}else{ //上传控件
					System.out.println(fileItem.getContentType());
					
					String contentType = fileItem.getContentType();
					
					//上传文件不是图片类型
					/*if(!contentType.startsWith("image/")){
						//System.out.println("这不是图片类型");
						throw new UploadException("亲，上传的类型不对，应该是图片类型");
					}*/
					
					//使用UUID作为文件名
					String uuidStr = UUID.randomUUID().toString();
					
					
					String extension = FilenameUtils.getExtension(fileItem.getName());
					
					
					String realPath = req.getServletContext().getRealPath("/upload");
					
			        /*File file = new File("D:/",uuidStr+"."+extension);
				    fileItem.write(file);*/
				}
				
			}
			
			
			
		} 
		//自已处理单个文件 上传超过限制异常
		catch(SizeLimitExceededException e){
			throw new UploadException("亲，你上传的多个文件超过150k",e);
		}
		catch(FileSizeLimitExceededException e){
			throw new UploadException("亲，你上传的单个文件超过20K",e);
		}
		catch(UploadException e){
			throw e;
		}
		catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
