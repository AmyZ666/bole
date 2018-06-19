<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style>
  	body {background:url(style/images/error.jpg) top center no-repeat;background-size: 100% 100%;  
            position: absolute;  }
           .btn{
           		height: 31px;
    		width: 153px;
    margin-left: 590px;
    margin-top: 449px;
    background-color: red;
    text-align:center;
    padding-top:8px;
           }
           a{
           	color:white;
           	text-decoration:none
           }
  </style>

  <body>

    <div class="btn">
    	<a href="index.jsp">返回首页</a>
    </div>
  </body>
</html>
