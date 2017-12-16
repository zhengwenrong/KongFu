<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>宅时代</title>
    <link href="css/base.css" type="text/css" rel="stylesheet"/>
    <link href="css/header.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/iconfont.css">
</head>
<body>
    <!-- 顶部 -->
    <div class="top clearfix">
        <div class="logo">

            <img width="156px" height="51px" src="img/logo.png" alt="">

        </div>
        <!-- 定位 -->
        <div class="location">
            <div>
                <i class="iconfont icon-map"></i>
                <span>江门市</span>
            </div>
            <div>
                <input type="button" value="更换">
            </div>            
        </div>

        <div class="top-right">

            <div>
                <span>
                	<c:if test="${ empty user}">                	
		                <a href="login.html">登录</a><span>
                	</c:if>
                	<c:if test="${ not empty user}">
                		<i class="iconfont icon-mobilephone"></i>15018159367</span>
                	</c:if>
                
                </span>
                <span>|</span>
                <span>
                <c:if test="${empty user }">
	                <a href="register.html">注册</a>
                
                </c:if>
                <c:if test="${not empty user }">
	                <a href="user/logout.action">注销</a>                
                </c:if>
                </span>

            </div>
            <div>

                <ul>
                    <li></li>
       
                    <c:if test="${currentPage eq 'index' }">
                    	  <li class="active1"><a class="activeA" href="index.action">首页</a></li>
                    </c:if>
                     <c:if test="${currentPage ne 'index' }">
                    	  <li><a href="index.action">首页</a></li>
                    </c:if>
                    
                    <c:if test="${currentPage eq 'ordercenter' }">
                   	 	<li class="active1"><a class="activeA" href="ordercenter.action">订单中心</a></li>
                    </c:if>
                    <c:if test="${currentPage ne 'ordercenter' }">
                    	<li><a href="ordercenter.action">订单中心</a></li>
                    </c:if>
                    
                    <c:if test="${currentPage eq 'vipcenter' }">
                    	<li class="active1"><a class="activeA" href="vipcenter.action">会员中心</a></li>
                    </c:if>
                    <c:if test="${currentPage ne 'vipcenter' }">
                    	<li><a href="vipcenter.action">会员中心</a></li>
                    </c:if>
                    
                    <c:if test="${currentPage eq 'helpcenter' }">
                    	<li class="active1"><a class="activeA" href="helpcenter.action">帮助中心</a></li>
                    </c:if>
            		<c:if test="${currentPage ne 'helpcenter' }">
                    	<li><a href="helpcenter.action">帮助中心</a></li>
                    </c:if>
                                                     
                </ul>

            </div>

        </div>

    </div>


</body>
</html>