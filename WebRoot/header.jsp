<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>header</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div id="header">
    	<div class="wrapper">
    		<a href="index.jsp" class="logo">
    			<img src="style/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li class="current"><a href="index.html">首页</a></li>
    			<li ><a href="companylist.html" >公司</a></li>
    			<li ><a href="h/toForum.html" target="_blank">论坛</a></li>
    				    			<li ><a href="jianli.html" rel="nofollow">我的简历</a></li>
	    							    			<li ><a href="create.html" rel="nofollow">发布职位</a></li>
	    		    		</ul>
        	            <ul class="loginTop">
            	<li><a href="login.jsp" rel="nofollow">登录</a></li> 
            	<li>|</li>
            	<li><a href="register.jsp" rel="nofollow">注册</a></li>
            </ul>
                                </div>
    </div><!-- end #header -->
  </body>
</html>
