package org.wenrong.kongfu.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 用户登录拦截器
 * @author Administrator
 *
 */
public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {

		String requestURI = request.getRequestURI();
		
		if(requestURI.contains("pay.action")||requestURI.contains("ordercenter.action")||requestURI.contains("vipcenter.action")){
			
			Object attribute = request.getSession().getAttribute("user");
			
			if(attribute == null){
				
				response.sendRedirect("login.html");
				return false;
			}
			
			
		}
		
		return true;
	}
	
	
	
	
}
