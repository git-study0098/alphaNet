package com.last.admin.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;

import com.last.common.service.AdminNotice1Service;


@Controller
public class DownloadController implements ApplicationContextAware{
	private WebApplicationContext context=null;
	
	@Autowired
	AdminNotice1Service adminNotice1Service;
	
	public void setAdminNotice1Service(AdminNotice1Service adminNotice1Service) {
		this.adminNotice1Service = adminNotice1Service;
	}
	
	@RequestMapping("/file/{fileId}")
	public ModelAndView download(@PathVariable String fileId,
								 HttpServletResponse response,@RequestParam(value="attach_file") String fileName)
								 throws IOException{
		
		
		File downloadFile=getFile(fileId,fileName);
		
		if(downloadFile==null){
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
			return null;
		}
		return new ModelAndView("downloadView","downloadFile",downloadFile);
		
		
		
	}
	
	private File getFile(String fileId,String fileName){
		String baseDir="C:/git/alphaNet/lastProject/src/main/webapp/resources/upload";
		
		if(fileId.equals("1"))
			return new File(baseDir,fileName);
		return null;
	}
	
	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
				throws BeansException{
		this.context=(WebApplicationContext)applicationContext;
	}
}
