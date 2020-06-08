package com.xcl.intercepter;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 自定义拦截器步骤
 * 实现HandlerInterceptor方法
 * 重写***Handler()
 * springmvc.xml中配置拦截器
 */

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        System.out.println("登录拦截");
        request.setCharacterEncoding("utf8");
        response.setCharacterEncoding("utf8");
        //登录校验
        String uri = request.getRequestURI();
        //登录请求不拦截
        if (uri.indexOf("login") > 0 || uri.indexOf("toLogin") > 0) {
            return true;
        }
        //登录校验
        Object token = request.getSession().getAttribute("token");
        if (null == token) {
            //未登录，重定向到登录页
            response.sendRedirect("toLogin");
            return false;
        } else {
            //已登录，放行
            return true;
        }

    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        //TODO something
        // System.out.println("postHandle方法执行");
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        //TODO something
        //System.out.println("afterCompletion方法执行完毕执行");
    }
}
