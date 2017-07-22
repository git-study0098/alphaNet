package com.last.login;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.last.common.vo.MemberVo;

@Controller
//@RequestMapping("login")
public class LoginController {

	@Autowired
	private LoginService loginService;

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
	
	
	@RequestMapping("login")
	public String login(){
		return "1main";
	}
	
	@RequestMapping("loginForm")
	public String loginForm(@RequestParam(value="id", defaultValue="")String findId, Model model){
		model.addAttribute("findId",findId);
		return "login/loginForm";
	}
	
	@RequestMapping("login/findIdInput")
	public String findIdInput(){
		return "login/findIdInput";
	}
	@RequestMapping("login/findPwdInput")
	public String findPwdInput(@RequestParam(value="idd")String idd, Model model){
		model.addAttribute("idd",idd);
		return "login/findIdInput";
	}
	
	@RequestMapping("login/findIdForm")
	public String findIdForm(){
		return "login/findIdForm";
	}
	@RequestMapping("login/goFindId")
	public String findId(@RequestParam(value="nm")String nm, @RequestParam(value="bir")String bir,
			@RequestParam(value="ph")String ph, Model model){
		
		MemberVo member = new MemberVo();
		member.setName(nm);
		member.setMem_bir(bir);
		member.setMem_phone(ph);
		
		MemberVo result = null;
		try {
			result = loginService.selectFindIdPwd(member);  // 잘못된 입력하면 500터진다?
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(result != null)
		model.addAttribute("findId", result.getId());
		
		return "login/findIdAlert";
	}
	
	@RequestMapping("login/findPwdForm")
	public String findPwdForm(){
		return "login/findPwdForm";
	}
	@RequestMapping("login/findPwd")
	public String findPwd(){
		return "login/findPwd";
	}
	@RequestMapping("login/goFindPwd")
	public String findPwd(@RequestParam(value="nm")String nm, @RequestParam(value="bir")String bir, @RequestParam(value="idd")String idd,
			@RequestParam(value="ph")String ph, Model model){
		int result = 0;
		String url ="login/findPwdForm";
		MemberVo vo = new MemberVo();
		
		vo.setId(idd);
		vo.setMem_bir(bir);
		vo.setMem_phone(ph);
		vo.setName(nm);
		
		try {
			result = loginService.selectCorrect(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(result == -1){
			//틀렸을떄 알러창띄우고 싶다고!!!!!!!
		}else if(result == 1){
			url = "login/pwdReset";
		}
		
		model.addAttribute("idd", idd);
		model.addAttribute("nm", nm);
		
		return url;
	}
	
	@RequestMapping("login/updatePwd")
	public String updatePwd(@RequestParam(value="newPw")String newPw,@RequestParam(value="id")String id
			,@RequestParam(value="nm")String nm,Model model){

		String url = "login/loginForm";
		System.out.println("업데이트 컨트롤러"+id+", "+newPw+", "+nm);
		try {
			System.out.println("쿼리들어간다~");
			loginService.updatePwd(id, newPw);
		} catch (SQLException e) {
			System.out.println("업데이트 뻑남");
			url = "login/pwdReset";
			model.addAttribute("idd",id);
			model.addAttribute("nm",nm);
			e.printStackTrace();
		}
		
		return url;
	}
	
	
	
//	public static final int KEY_SIZE = 1024;

//	@RequestMapping("loginForm")
//	public String loginForm(HttpServletRequest request){
//		 try {
//	            KeyPairGenerator generator = KeyPairGenerator.getInstance("RSA");
//	            generator.initialize(KEY_SIZE);
//	            
//	            KeyPair keyPair = generator.genKeyPair();
//	            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
//
//	            PublicKey publicKey = keyPair.getPublic();
//	            PrivateKey privateKey = keyPair.getPrivate();
//
//	            HttpSession session = request.getSession();
//	            // 세션에 공개키의 문자열을 키로하여 개인키를 저장한다.
//	            session.setAttribute("__rsaPrivateKey__", privateKey);
//
//	            // 공개키를 문자열로 변환하여 JavaScript RSA 라이브러리 넘겨준다.
//	            RSAPublicKeySpec publicSpec = (RSAPublicKeySpec) keyFactory.getKeySpec(publicKey, RSAPublicKeySpec.class);
//
//	            String publicKeyModulus = publicSpec.getModulus().toString(16);
//	            String publicKeyExponent = publicSpec.getPublicExponent().toString(16);
//
//	            request.setAttribute("publicKeyModulus", publicKeyModulus);
//	            request.setAttribute("publicKeyExponent", publicKeyExponent);
//
//	        } catch (Exception ex) {
//	        	System.out.println("c1");
//	            try {
//	            	System.out.println("t1");
//					throw new ServletException(ex.getMessage(), ex);
//				} catch (ServletException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//	        }
//		return "login/loginForm";
//	}
	
//	@RequestMapping("login")
//	public String login(HttpServletRequest request){
//		String securedUsername = request.getParameter("securedUsername");
//        String securedPassword = request.getParameter("securedPassword");
//
//        HttpSession session = request.getSession();
//        PrivateKey privateKey = (PrivateKey) session.getAttribute("__rsaPrivateKey__");
//        session.removeAttribute("__rsaPrivateKey__"); // 키의 재사용을 막는다. 항상 새로운 키를 받도록 강제.
//
//        if (privateKey == null) {
//            throw new RuntimeException("암호화 비밀키 정보를 찾을 수 없습니다.");
//        }
//        try {
//            String username = decryptRsa(privateKey, securedUsername);
//            String password = decryptRsa(privateKey, securedPassword);
//            request.setAttribute("username", username);
//            request.setAttribute("password", password);
//        } catch (Exception ex) {
//            try {
//				throw new ServletException(ex.getMessage(), ex);
//			} catch (ServletException e) {
//				e.printStackTrace();
//			}
//        }
//        
//        return "login";
//	}
	
//	private String decryptRsa(PrivateKey privateKey, String securedValue) throws Exception {
//        System.out.println("will decrypt : " + securedValue);
//        Cipher cipher = Cipher.getInstance("RSA");
//        byte[] encryptedBytes = hexToByteArray(securedValue);
//        cipher.init(Cipher.DECRYPT_MODE, privateKey);
//        byte[] decryptedBytes = cipher.doFinal(encryptedBytes);
//        String decryptedValue = new String(decryptedBytes, "utf-8"); // 문자 인코딩 주의.
//        return decryptedValue;
//    }
//
//    /**
//     * 16진 문자열을 byte 배열로 변환한다.
//     */
//    public static byte[] hexToByteArray(String hex) {
//        if (hex == null || hex.length() % 2 != 0) {
//            return new byte[]{};
//        }
//
//        byte[] bytes = new byte[hex.length() / 2];
//        for (int i = 0; i < hex.length(); i += 2) {
//            byte value = (byte)Integer.parseInt(hex.substring(i, i + 2), 16);
//            bytes[(int) Math.floor(i / 2)] = value;
//        }
//        return bytes;
//    }
	
}
