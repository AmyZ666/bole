<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<script id="allmobilize" charset="utf-8" src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录-伯乐网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta content="伯乐网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在伯乐网" name="description">
<meta content="伯乐,伯乐网,伯乐招聘,伯乐, 伯乐网 ,互联网招聘,伯乐互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 伯乐官网, 伯乐百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招" name="keywords">

<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css"/>

<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>

<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script type="text/javascript" src="style/js/core.min.js"></script>


<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="style/js/conv.js"></script>
</head>

<body id="login_bg">
	<div class="login_wrapper">
		<div class="login_header">
        	<a href="h/"><img src="style/images/logoko111.png" width="285" height="62" alt="伯乐招聘" /></a>
            <div id="cloud_s"><img src="style/images/cloud_s.png" width="81" height="52" alt="cloud" /></div>
            <div id="cloud_m"><img src="style/images/cloud_m.png" width="136" height="95"  alt="cloud" /></div>
        </div>
        
    	<input type="hidden" id="resubmitToken" value="" />		
		 <div class="login_box">
        	<s:form id="loginForm" action="login" method="post">
        		<s:textfield name="user.email" id="email" size="30" placeholder="请输入登录邮箱地址"></s:textfield>
<!-- 				<input type="text" id="email" name="user.email" value="" tabindex="1" placeholder="请输入登录邮箱地址" /> -->
				<s:password id="password" name="user.passWord" placeholder="请输入密码"></s:password>
<!-- 			<input type="password" id="password" name="user.passWord" tabindex="2" placeholder="请输入密码" />
 -->				<span class="error" style="display:none;" id="beError"></span>
<!-- 			    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
 -->			<%--     <s:a href="reset.jsp" class="fr" target="_blank">忘记密码？</s:a> --%>
			    
				<!-- <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" /> -->
				<s:submit value="登 录" id="submitLogin"></s:submit>
				<!-- <a style="color:#fff;" type="submit" class="submitLogin" title="登 &nbsp; &nbsp; 录"/>登 &nbsp; &nbsp; 录</a> -->

			    
			    
			</s:form>
			<div class="login_right">
				<div>还没有伯乐帐号？</div>
				<a  href="register.jsp"  class="registor_now">立即注册</a>
			    <div class="login_others">使用以下帐号直接登录:</div>
			    <a  href="h/ologin/auth/sina.html"  target="_blank" class="icon_wb" title="使用新浪微博帐号登录"></a>
			    <a  href="h/ologin/auth/qq.html"  class="icon_qq" target="_blank" title="使用腾讯QQ帐号登录"></a>
			</div>
        </div>
        <div class="login_box_btm"></div>
    </div><script type="text/javascript">
</body>
</html>
