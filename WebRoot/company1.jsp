<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
</script>
<script type="text/javascript" async="" src="style/js/conversion.js"></script>
<script src="style/js/allmobilize.min.js" charset="utf-8"
	id="allmobilize"></script>
<style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>基本信息-招聘服务-伯乐网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="伯乐网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在伯乐网">
<meta name="keywords"
	content="伯乐,伯乐网,伯乐招聘,伯乐, 伯乐网 ,互联网招聘,伯乐互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 伯乐官网, 伯乐百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
	var ctx = "http://www.lagou.com";
	console.log(1);
</script>
<link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
<link href="style/css/style.css" type="text/css" rel="stylesheet">
<link href="style/css/external.min.css" type="text/css" rel="stylesheet">
<link href="style/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="style/js/jquery.1.10.1.min.js"></script>
<script src="style/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/ajaxfileupload.js"></script>
<script src="style/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
	var youdao_conv_id = 271546;
</script>
<script src="style/js/conv.js" type="text/javascript"></script>
<script src="style/js/ajaxCross.json" charset="UTF-8"></script>
</head>
<body>
	<div id="body">
		<jsp:include page="lock.jsp"></jsp:include>
		<div id="header">
			<div class="wrapper">
				<a class="logo" href="index.jsp"> <img width="229" height="43"
					alt="伯乐招聘-专注互联网招聘" src="style/images/logoko111.png"> </a>
				<ul id="navheader" class="reset">
					<li><a href="index.jsp">首页</a>
					</li>
					<li class="current"><a href="companylist.jsp">公司</a>
					</li>
					<li><a target="_blank" href="forum.jsp">论坛</a>
					</li>
					<%
						if (session.getAttribute("status").equals(1)) {
					%>
					<li><a rel="nofollow" href="">简历管理</a></li>
					<li><a rel="nofollow" href="create.html">发布职位</a>
					</li>
					<%
						} else {
					%>
					<li><a rel="nofollow" href="#">我的简历</a>
					</li>
					<%
						}
					%>
				</ul>
				<jsp:include page="header.jsp" />
			</div>
		</div>
		<div id="container">

			<div style="" id="stepTip">
				<a></a> <img width="803" height="59" src="style/images/tiponce.jpg">
			</div>
			<div class="content_mid">
				<dl class="c_section c_section_mid">
					<dt>
						<h2>
							<em></em>填写公司信息
						</h2>
					</dt>
					<dd>
						<form id="stepForm" action="company1" method="post"  enctype="multipart/form-data">
							<div class="c_text_1">基本信息为必填项，是求职者加速了解公司的窗口，认真填写吧！</div>
							<img width="668" height="56" class="c_steps" alt="第一步"
								src="style/images/step1.png">

 							<h3>
								公司全称
								<!-- <span>福建平潭协创进出口贸易有限公司</span> -->
							</h3>
						<input type="text" placeholder="请输入公司全称，如:福建平潭协创进出口贸易有限公司" value="" name="com.name" id="name" class="valid"> 
							<h3>公司简称</h3>
							<!--非必填-->
		 					<input type="text" placeholder="请输入公司简称，如:伯乐" value="" name="com.short_name" id="name" class="valid">
							<h3>公司LOGO</h3>
							<!--非必填改必填-->
							<input type="file" name="uploadImage">
							<div class="c_logo c_logo_pos">
								<a title="上传公司LOGO" class="inline cboxElement"
									href="#logoUploader">
									<div id="logoNo">
										<span>
									</div>
									<div class="dn" id="logoShow">
										<img width="190" height="190" alt="公司logo" src="" name="com.logo"> <span>更换公司LOGO<br>190px*190px
											小于5M</span>
									</div> </a>
							</div>

							<h3>公司网址</h3>
							<input type="text" placeholder="请输入公司网址" value="" name="com.website" >

							<h3>所在城市</h3>
							<input type="text" placeholder="请输入工作城市，如：北京" name="com.address">

							<h3>行业领域</h3>
							<input type="text" placeholder="请输入行业领域，如：互联网" name="com.domain">
							<h3>公司规模</h3>
							<input type="text" placeholder="请输入公司规模，如：15-50人" name="com.size">
<!-- 							<div>
								<input type="hidden" value="" name="select_scale_hidden"
									id="select_scale_hidden"> <input type="button"
									value="请选择公司规模" id="select_scale" class="select">
								<div class="dn" id="box_scale" style="display: none;">
									<ul class="reset">
										<li>少于15人</li>
										<li>15-50人</li>
										<li>50-150人</li>
										<li>150-500人</li>
										<li>500-2000人</li>
										<li>2000人以上</li>
									</ul>
								</div>
							</div> -->

							<h3>发展阶段</h3>
							<input type="text" placeholder="请输入工资发展阶段，如：天使轮" name="com.stage">
	<!-- 						<div>
								<input type="hidden" id="s_radio_hidden" name="s_radio_hidden"
									value="">
								<ul class="s_radio clearfix s_radio_ex">
									<li>未融资</li>
									<li>天使轮</li>
									<li>A轮</li>
									<li>B轮</li>
									<li>C轮</li>
									<li>D轮及以上</li>
									<li>上市公司</li>
								</ul>
							</div> -->

<!-- 							<h3>投资机构</h3>
							<ul id="stagesList" class="reset">
								<li><input type="hidden" class="select_invest_hidden"
									name="select_invest_hidden"> <input type="button"
									value="请选择发展阶段" class="select_short select_invest">
									<div class="box_invest dn" style="display: none;">
										<ul class="reset">
											<li>天使轮</li>
											<li>A轮</li>
											<li>B轮</li>
											<li>C轮</li>
											<li>D轮及以上</li>
											<li>上市公司</li>
										</ul>
									</div> <input type="text" placeholder="请输入投资机构，如真格基金，创新工场"
									name="stageorg">
								</li>
							</ul>
							<div class="dn" id="cloneInvest">
								<input type="hidden" class="select_invest_hidden"
									name="select_invest_hidden"> <input type="button"
									value="请选择发展阶段" class="select_short select_invest">
								<div class="box_invest dn">
									<ul class="reset">
										<li>天使轮</li>
										<li>A轮</li>
										<li>B轮</li>
										<li>C轮</li>
										<li>D轮及以上</li>
										<li>上市公司</li>
									</ul>
								</div>
								<input type="text" placeholder="请输入投资机构，如真格基金，创新工场"
									name="stageorg">
							</div> -->

							<h3>一句话介绍</h3>
							<input type="text" placeholder="一句话概括公司亮点，如公司愿景、领导团队等，限50字"
								maxlength="50" name="com.short_introduce" id="temptation"> <span
								style="display:none;" class="error" id="beError"></span> <input
								type="hidden" id="companyId" name="companyId" value="25927">
							<input type="hidden" id="companyName" name="companyName" value="福建平潭协创进出口贸易有限公司">
													
							<input type="submit" value="保存，下一步" id="stepBtn" class="btn_big fr">
						</form>
					</dd>
				</dl>
			</div>

			<!-------------------------------------弹窗lightbox  ----------------------------------------->
			<div style="display:none;">
				<!--图片上传-->
				<div style="width:650px;height:470px;" class="popup"
					id="logoUploader">
					<object width="650" height="470"
						classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="FlashID">
						<param
							value="../../flash/avatar.swf?url=http://www.lagou.com/cd/saveProfileLogo.json"
							name="movie">
						<param value="high" name="quality">
						<param value="opaque" name="wmode">
						<param value="111.0.0.0" name="swfversion">
						<!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
						<param value="../../Scripts/expressInstall.swf"
							name="expressinstall">
						<!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
						<!--[if !IE]>-->
						<object width="650" height="470"
							data="../../flash/avatar.swf?url=http://www.lagou.com/cd/saveProfileLogo.json"
							type="application/x-shockwave-flash">
							<!--<![endif]-->
							<param value="high" name="quality">
							<param value="opaque" name="wmode">
							<param value="111.0.0.0" name="swfversion">
							<param value="../../Scripts/expressInstall.swf"
								name="expressinstall">
							<!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
							<div>
								<h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
								<p>
									<a href="http://www.adobe.com/go/getflashplayer"><img
										width="112" height="33"
										src="style/images/get_flash_player.gif"
										alt="获取 Adobe Flash Player"> </a>
								</p>
							</div>
							<!--[if !IE]>-->
						</object>
						<!--<![endif]-->
					</object>
				</div>
				<!-- #logoUploader -->
			</div>
			<!------------------------------------- end ----------------------------------------->

			<script src="style/js/step1.min.js" type="text/javascript"></script>
			<script>
				var avatar = {};
				avatar.uploadComplate = function(data) {
					var result = eval('(' + data + ')');
					if (result.success) {
						jQuery('#logoShow img').attr("src",
								ctx + '/' + result.content);
						jQuery.colorbox.close();
						jQuery('#logoNo').hide();
						jQuery('#logoShow').show();
					}
				};
			</script>
			<div class="clear"></div>
			<input type="hidden" value="13ae35fedd9e45cdb66fb712318d7369"
				id="resubmitToken"> <a rel="nofollow" title="回到顶部"
				id="backtop" style="display: none;"></a>
		</div>
		<!-- end #container -->
	</div>
	<!-- end #body -->
	<jsp:include page="footer.jsp"></jsp:include>

	<script src="style/js/core.min.js" type="text/javascript"></script>
	<script src="style/js/popup.min.js" type="text/javascript"></script>

	<!--  -->


	<div id="cboxOverlay" style="display: none;"></div>
	<div id="colorbox" class="" role="dialog" tabindex="-1"
		style="display: none;">
		<div id="cboxWrapper">
			<div>
				<div id="cboxTopLeft" style="float: left;"></div>
				<div id="cboxTopCenter" style="float: left;"></div>
				<div id="cboxTopRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxMiddleLeft" style="float: left;"></div>
				<div id="cboxContent" style="float: left;">
					<div id="cboxTitle" style="float: left;"></div>
					<div id="cboxCurrent" style="float: left;"></div>
					<button type="button" id="cboxPrevious"></button>
					<button type="button" id="cboxNext"></button>
					<button id="cboxSlideshow"></button>
					<div id="cboxLoadingOverlay" style="float: left;"></div>
					<div id="cboxLoadingGraphic" style="float: left;"></div>
				</div>
				<div id="cboxMiddleRight" style="float: left;"></div>
			</div>
			<div style="clear: left;">
				<div id="cboxBottomLeft" style="float: left;"></div>
				<div id="cboxBottomCenter" style="float: left;"></div>
				<div id="cboxBottomRight" style="float: left;"></div>
			</div>
		</div>
		<div
			style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>
	</div>
</body>
</html>