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
	<!-- <div id="header">
    	<div class="wrapper">
    		<a href="index.jsp" class="logo">
    			<img src="style/images/logoko111.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li class="current"><a href="index.jsp">首页</a></li>
    			<li ><a href="companylist.jsp" >公司</a></li>
    			<li ><a href="h/toForum.jsp" target="_blank">论坛</a></li>
    				    			<li ><a href="jianli.jsp" rel="nofollow">我的简历</a></li>
	    							    			<li ><a href="create.jsp" rel="nofollow">发布职位</a></li>
	    		    		</ul>
        	            <ul class="loginTop">
            	<li><a href="login.jsp" rel="nofollow">登录</a></li> 
            	<li>|</li>
            	<li><a href="register.jsp" rel="nofollow">注册</a></li>
            </ul>
                                </div>
    </div> -->
	<!-- end #header -->
	
	
			<dl class="collapsible_menu">
				<dt>
					<span><%=session.getAttribute("username") %>&nbsp;</span> <span
						class="red dn" id="noticeDot-1"></span> <i></i>
				</dt>
				<%
					if(session.getAttribute("status").equals(1)){
				 %>
				<dd>
					<a href="positions.jsp">我发布的职位</a>
				</dd>
				<dd>
					<a href="">我收到的简历</a>
				</dd>
				<dd class="btm">
					<a href="myhome.jsp">我的公司主页</a>
				</dd>
				<dd>
					<a href="create.jsp">我要招人</a>
				</dd>
				<%
					}else{
				 %>
				<dd>
					<a rel="nofollow" href="jianlic.action?id=<%=session.getAttribute("id") %>">我的简历</a>
				</dd>
				<dd>
					<a href="listAll.jsp">我要找工作</a>
				</dd>
				<dd>
					<a href="getmian.jsp">我收到的面试通知</a>
				</dd>
				<%
					}
				 %>
				 <dd>
		---------------------------
		</dd>
				<dd class="logout">
					<!-- <a rel="nofollow" href="login.jsp">退出</a> -->
					<form action="logout" method="post">
						&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="退出"
							style="background-color:#019875;color:#FFF">
					</form>
				</dd>
			</dl>
	
	<!-- end #header -->

</body>
</html>
