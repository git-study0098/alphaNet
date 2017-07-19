package com.last.util;

import javax.servlet.http.HttpServletRequest;

public class SystemUtils {
	public static String getRequestPrimitiveURI(HttpServletRequest request){
		String primitiveUrlPath = request.getRequestURI();

		return primitiveUrlPath;
	}
	
	public static String displayJspID(HttpServletRequest request){
		StringBuffer hiddenMsg = new StringBuffer(256);
	
		hiddenMsg.append("<!--");
		hiddenMsg.append("\n");
		hiddenMsg.append(SystemUtils.getRequestPrimitiveURI(request));
		hiddenMsg.append("\n");
		hiddenMsg.append(SystemUtils.getRequestURI(request));
		hiddenMsg.append("\n");
		hiddenMsg.append("-->");
		
		return hiddenMsg.toString();
	}
	
	public static String getRequestURI(HttpServletRequest request){
		String uriPath = null;
		uriPath = (String)request.getAttribute("javax.servlet.RequestDispatcher.FORWARD_REQUEST_URI");
	
		if(uriPath == null){
			uriPath = (String)request.getAttribute("javax.servlet.forward.request_uri");
		}
		if(uriPath == null){
			request.getRequestURI();
		}
		return uriPath;
	}
}
