<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
<title>我的简历-伯乐网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="伯乐网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在伯乐网">
<meta name="keywords"
	content="伯乐,伯乐网,伯乐招聘,伯乐, 伯乐网 ,互联网招聘,伯乐互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 伯乐官网, 伯乐百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link href="h/images/favicon.ico" rel="Shortcut Icon">
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
				<li><a href="index.jsp">首页</a></li>
				<li><a href="companylist.jsp">公司</a></li>
			
				<%
					if(session.getAttribute("status").equals(1)){
				 %>
				<li><a rel="nofollow" href="back_jianli.action?status=0&com_id=<%=session.getAttribute("id") %>">简历管理</a>
				</li>
				<li><a rel="nofollow" href="create.jsp">发布职位</a></li>
				<%
					}else{
					
				 %>
				 <li  class="current"><a rel="nofollow" href="#">我的简历</a></li>
				 <%
				 	}
				  %>
			</ul>
			<jsp:include page="header.jsp" />
		</div>
	</div>
	<s:iterator value="#session.jianli" var="pro"  status='st' >
		<div id="container">

			<div class="clearfix">
				<div class="content_l">
					<div class="fl" id="resume_name">
						<div class="nameShow fl">
							<h1 title="jason的简历"><s:property value="#pro.name"></s:property>的简历</h1>
							 <a target="_blank"
								href="preview.jsp">预览</a>
						</div>
						<form class="fl dn" id="resumeNameForm">
							<input type="text" value="<s:property value="#pro.name"></s:property>的简历" name="resumeName"
								class="nameEdit c9"> <input type="submit" value="保存">
							| <a target="_blank" href="preview.jsp">预览</a>
						</form>
					</div>
					<!--end #resume_name-->
					<div class="fr c5" id="lastChangedTime">
						最后一次更新：<span><s:property value="#pro.update_time"></s:property> </span>
					</div>
					<!--end #lastChangedTime-->
					<%-- <div id="resumeScore">
						<div class="score fl">
							<canvas height="120" width="120" id="doughnutChartCanvas"
								style="width: 120px; height: 120px;"></canvas>
							<div style="" class="scoreVal">
								<span>15</span>分
							</div>
						</div>

						<div class="which fl">
							<div>工作经历最能体现自己的工作能力，且完善后才可投递简历哦！</div>
							<span rel="workExperience"><a>马上去完善</a>
							</span>
						</div>
					</div> --%>
					<!--end #resumeScore-->
		
		
			<form action="update_jianli" method="post">
		
		
					<div class="profile_box" id="basicInfo">
						<h2>基本信息</h2>
						<span class="c_edit"></span>
						<div class="basicShow">
						
						<span><s:property value="#pro.name"></s:property> |<s:property value="#pro.sex"></s:property> | <s:property value="#pro.education"></s:property> | <s:property value="#pro.exp"></s:property>工作经验<br> <s:property value="#pro.phone"></s:property> |
								<s:property value="#pro.email"></s:property><br> </span> 
						
							<div class="m_portrait">
								<div></div>
								<img width="120" height="120" alt="jason" name="jl.img"
									src="style/images/default_headpic.png">
							</div>
						</div>
						<!--end .basicShow-->

						<div class="basicEdit dn">
					
								<table id="profileForm">
									<tbody>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="text" placeholder="姓名" value="<s:property value='#pro.name'></s:property>"
												name="jl.name" ></td>
											<td valign="top"></td>
											<td>
												<ul class="profile_radio clearfix reset">
													<li class="current">男<em></em> <input type="radio"
														checked="checked" name="jl.sex" value="男"></li>
													<li>女<em></em> <input type="radio" name="jl.sex"
														value="女"></li>
												</ul></td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="hidden" id="topDegree" value="大专"
												name="jl.education"><input type="button"  value="<s:property value='#pro.education'></s:property>"
												id="select_topDegree"  name="jl.education"  
												class="profile_select_190 profile_select_normal">
												<div class="boxUpDown boxUpDown_190 dn" id="box_topDegree"
													style="display: none;">
													<ul>
														<li>大专</li>
														<li>本科</li>
														<li>硕士</li>
														<li>博士</li>
														<li>其他</li>
													</ul>
												</div></td> 
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="hidden" id="workyear"  value="<s:property value='#pro.exp'></s:property>"
												name="jl.exp"> <input type="button" value=""
												id="select_workyear"
												class="profile_select_190 profile_select_normal">
												<div class="boxUpDown boxUpDown_190 dn" id="box_workyear"
													style="display: none;">
													<ul>
														<li>应届毕业生</li>
														<li>1年</li>
														<li>2年</li>
														<li>3年</li>
														<li>4年</li>
														<li>5年</li>
														<li>6年</li>
														<li>7年</li>
														<li>8年</li>
														<li>9年</li>
														<li>10年</li>
														<li>10年以上</li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td colspan="3"><input type="text" placeholder="手机号码"
												 value="<s:property value='#pro.phone'></s:property>" name="jl.phone" id="tel" ></td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td colspan="3"><input type="text"
												placeholder="接收面试通知的邮箱" value= value="<s:property value='#pro.email'></s:property>" name="jl.email"
												id="email"></td>
										</tr>
<!-- 										<tr>
											<td></td>
											<td colspan="3"><input type="submit" value="保 存"
												class="btn_profile_save"> <a
												class="btn_profile_cancel" href="javascript:;">取 消</a></td>
										</tr> -->
									</tbody>
 								</table>
						
							<!--end #profileForm-->
							<div class="new_portrait">
								<div class="portrait_upload" id="portraitNo">
									<span>上传自己的头像</span>
								</div>
								<div class="portraitShow dn" id="portraitShow">
									<img width="120" height="120" src=""> <span>更换头像</span>
								</div>
								<input type="file" value="" title="支持jpg、jpeg、gif、png格式，文件小于5M"
									onchange="img_check(this,'h/resume/uploadPhoto.json','headPic');"
									name="jl.img" id="headPic" class="myfiles">
								<!-- <input type="hidden" id="headPicHidden" /> -->
								<em> 尺寸：120*120px <br> 大小：小于5M </em> <span
									style="display:none;" id="headPic_error" class="error"></span>
							</div>
							<!--end .new_portrait-->
						</div>
						<!--end .basicEdit-->
						<input type="hidden" id="nameVal"  value="<s:property value='#pro.name'></s:property>"  > <input
							type="hidden" id="genderVal"  value="<s:property value='#pro.sex'></s:property>"  > <input
							type="hidden" id="topDegreeVal"  value="<s:property value='#pro.education'></s:property>"  > <input
							type="hidden" id="workyearVal"  value="<s:property value='#pro.exp'></s:property>" > <input
							type="hidden" id="currentStateVal" value=""  > <input
							type="hidden" id="emailVal"  value="<s:property value='#pro.email'></s:property>"  > <input
							type="hidden" id="telVal"  value="<s:property value='#pro.phone'></s:property>"  > <input
							type="hidden" id="pageType" value="1">
					</div>
					<!--end #basicInfo-->

					<div class="profile_box" id="expectJob">
						<h2>期望工作</h2>
						<span class="c_edit dn"></span>
						<div class="expectShow dn">
							<span></span>
						</div>
						<!--end .expectShow-->
						<div class="expectEdit dn">
					
								<table id="expectForm">
									<tbody>
										<tr>
											<td><input type="hidden" id="expectCity" value="<s:property value='#pro.phone'></s:property>"  
												name="jl.hope_city" > <input type="button"
												value="期望城市，如：北京" id="select_expectCity"
												class="profile_select_287 profile_select_normal" >
												<div class="boxUpDown boxUpDown_596 dn" id="box_expectCity"
													style="display: none;">
													<dl>
														<dt>热门城市</dt>
														<dd>
															<span>北京</span> <span>上海</span> <span>广州</span> <span>深圳</span>
															<span>成都</span> <span>杭州</span>
														</dd>
													</dl>
													<dl>
														<dt>ABCDEF</dt>
														<dd>
															<span>北京</span> <span>长春</span> <span>成都</span> <span>重庆</span>
															<span>长沙</span> <span>常州</span> <span>东莞</span> <span>大连</span>
															<span>佛山</span> <span>福州</span>
														</dd>
													</dl>
													<dl>
														<dt>GHIJ</dt>
														<dd>
															<span>贵阳</span> <span>广州</span> <span>哈尔滨</span> <span>合肥</span>
															<span>海口</span> <span>杭州</span> <span>惠州</span> <span>金华</span>
															<span>济南</span> <span>嘉兴</span>
														</dd>
													</dl>
													<dl>
														<dt>KLMN</dt>
														<dd>
															<span>昆明</span> <span>廊坊</span> <span>宁波</span> <span>南昌</span>
															<span>南京</span> <span>南宁</span> <span>南通</span>
														</dd>
													</dl>
													<dl>
														<dt>OPQR</dt>
														<dd>
															<span>青岛</span> <span>泉州</span>
														</dd>
													</dl>
													<dl>
														<dt>STUV</dt>
														<dd>
															<span>上海</span> <span>石家庄</span> <span>绍兴</span> <span>沈阳</span>
															<span>深圳</span> <span>苏州</span> <span>天津</span> <span>太原</span>
															<span>台州</span>
														</dd>
													</dl>
													<dl>
														<dt>WXYZ</dt>
														<dd>
															<span>武汉</span> <span>无锡</span> <span>温州</span> <span>西安</span>
															<span>厦门</span> <span>烟台</span> <span>珠海</span> <span>中山</span>
															<span>郑州</span>
														</dd>
													</dl>
												</div></td>
										</tr>
										<tr>
											<td><input type="text" placeholder="期望职位，如：产品经理"
												value="" name="jl.hope_position" id="expectPosition">
											</td>
											<td><input type="hidden" id="expectSalary" value=""
												name="jl.hope_salary"> <input type="button"
												value="期望月薪" id="select_expectSalary"
												class="profile_select_287 profile_select_normal">
												<div class="boxUpDown boxUpDown_287 dn"
													id="box_expectSalary" style="display: none;">
													<ul>
														<li>2k以下</li>
														<li>2k-5k</li>
														<li>5k-10k</li>
														<li>10k-15k</li>
														<li>15k-25k</li>
														<li>25k-50k</li>
														<li>50k以上</li>
													</ul>
												</div></td>
										</tr>
<!-- 										<tr>
											<td colspan="2"><input type="submit" value="保 存"
												class="btn_profile_save"> <a
												class="btn_profile_cancel" href="javascript:;">取 消</a></td>
										</tr> -->
									</tbody>
								</table>
						
							<!--end #expectForm-->
						</div>
						<!--end .expectEdit-->
						<div class="expectAdd pAdd">
							填写准确的期望工作能大大提高求职成功率哦…<br> 快来添加期望工作吧！ <span>添加期望工作</span>
						</div>
						<!--end .expectAdd-->

						<input type="hidden" id="expectJobVal" value=""> <input
							type="hidden" id="expectCityVal" value=""> <input
							type="hidden" id="typeVal" value=""> <input type="hidden"
							id="expectPositionVal" value=""> <input type="hidden"
							id="expectSalaryVal" value="">
					</div>
					<!--end #expectJob-->

					<div class="profile_box" id="educationalBackground">
						<h2>
							教育背景<span>（投递简历时必填）</span>
						</h2>
						<span class="c_add dn"></span>
						<div class="educationalShow dn">
						
								<table class="educationalForm borderBtm dn">
									<tbody>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="text" placeholder="学校名称"  
												name="school_name" class="schoolName"></td>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="hidden" class="degree" value=""
												name="school_education"> <input type="button" value="学历"
												class="profile_select_287 profile_select_normal select_degree">
												<div class="box_degree boxUpDown boxUpDown_287 dn"
													style="display: none;">
													<ul>
														<li>大专</li>
														<li>本科</li>
														<li>硕士</li>
														<li>博士</li>
														<li>其他</li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="text" placeholder="专业名称"
												name="school_major" class="professionalName"></td>
											<td valign="top"><span class="redstar">*</span></td>
											
<!-- 										<tr>
											<td></td>
											<td colspan="3"><input type="submit" value="保 存"
												class="btn_profile_save"> <a
												class="btn_profile_cancel" href="javascript:;">取 消</a></td>
										</tr> -->
									</tbody>
								</table>
								<input type="hidden" class="eduId" value="">
						
							<!--end .educationalForm-->

							<ul class="elist clearfix">
							</ul>
						</div>
						<!--end .educationalShow-->
						
						<div class="educationalEdit dn">
						
								<table class="educationalForm">
									<tbody>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="text" placeholder="学校名称"  value="<s:property value='#pro.school_name'></s:property>"
												name="jl.school_name" class="schoolName"></td>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="hidden" class="degree" value=""
												name="jl.school_education"> <input type="button" value="学历"
												class="profile_select_287 profile_select_normal select_degree">
												<div class="box_degree boxUpDown boxUpDown_287 dn"
													style="display: none;">
													<ul>
														<li>大专</li>
														<li>本科</li>
														<li>硕士</li>
														<li>博士</li>
														<li>其他</li>
													</ul>
												</div></td>
										</tr>
										<tr>
											<td valign="top"><span class="redstar">*</span></td>
											<td><input type="text" placeholder="专业名称"
												name="jl.school_major" class="professionalName"></td>
											<td valign="top"><span class="redstar">*</span></td>
							
										<!-- <tr>
											<td></td>
											<td colspan="3"><input type="submit" value="保 存"
												class="btn_profile_save"> <a
												class="btn_profile_cancel" href="javascript:;">取 消</a></td>
										</tr> -->
									</tbody>
								</table>
								<input type="hidden" class="eduId" value="">
						
							<!--end .educationalForm-->
						</div>
						<!--end .educationalEdit-->
						<div class="educationalAdd pAdd">
							教育背景可以充分体现你的学习和专业能力，<br> 且完善后才可投递简历哦！ <span>添加教育经历</span>
						</div>
						<!--end .educationalAdd-->
					</div>
					<!--end #educationalBackground-->

					<div class="profile_box" id="selfDescription">
						<h2>自我描述</h2>
						<span class="c_edit dn"></span>
						<div class="descriptionShow dn"></div>
						<!--end .descriptionShow-->
						<div class="descriptionEdit dn">
						
								<table class="descriptionForm">
									<tbody>
										<tr>
											<td colspan="2"><textarea
													class="selfDescription s_textarea" name="jl.self_introduction"
													placeholder=""></textarea>
												<div class="word_count">
													你还可以输入 <span>500</span> 字
												</div></td>
										</tr>
<!-- 										<tr>
											<td colspan="2"><input type="submit" value="保 存"
												class="btn_profile_save"> <a
												class="btn_profile_cancel" href="javascript:;">取 消</a></td>
										</tr> -->
									</tbody>
								</table>
			
							<!--end .descriptionForm-->
						</div>
						<!--end .descriptionEdit-->
						<div class="descriptionAdd pAdd">
							描述你的性格、爱好以及吸引人的经历等，<br> 让企业了解多元化的你！ <span>添加自我描述</span>
						</div>
						<!--end .descriptionAdd-->
					</div>
					<!--end #selfDescription-->

					<div class="profile_box" id="worksShow">
						<h2>作品展示</h2>
						<span class="c_add dn"></span>
						<div class="workShow dn">
							<ul class="slist clearfix">
							</ul>
						</div>
						<!--end .workShow-->
						<div class="workEdit dn">
								<table class="workForm">
									<tbody>
										<tr>
											<td><input type="text" placeholder="请输入作品链接"
												name="jl.produce" class="workLink"></td>
										</tr>
										<tr>
											<td><textarea maxlength="100"
													class="workDescription s_textarea" name="jl.pro_introduction"
													placeholder="请输入说明文字"></textarea>
												<div class="word_count">
													你还可以输入 <span>100</span> 字
												</div></td>
										</tr>
									</tbody>
								</table>
								<input type="hidden" class="showId" value="">
							<!--end .workForm-->
						</div>
						<!--end .workEdit-->
						<div class="workAdd pAdd">
							好作品会说话！<br> 快来秀出你的作品打动企业吧！ <span>添加作品展示</span>
						</div>
						<!--end .workAdd-->
					</div>
					
					<tr>
					<td><input type="submit" value="保 存"
					class="btn_profile_save"> <a
					class="btn_profile_cancel" href="javascript:;">取 消</a></td>
				</tr>
					<!--end #worksShow-->
				<input type="hidden" id="resumeId" value="268472">
				</div>
					
			</form>
			<!------------------------------------- end ----------------------------------------->

			<script src="style/js/Chart.min.js" type="text/javascript"></script>
			<script src="style/js/profile.min.js" type="text/javascript"></script>
			<!-- <div id="profileOverlay"></div> -->
			<div class="" id="qr_cloud_resume" style="display: none;">
				<div class="cloud">
					<img width="134" height="134" src=""> <a class="close"
						href="javascript:;"></a>
				</div>
			</div>
			<script>
$(function(){
	$.ajax({
        url:ctx+"/mycenter/showQRCode",
        type:"GET",
        async:false
   	}).done(function(data){
        if(data.success){
             $('#qr_cloud_resume img').attr("src",data.content);
        }
   	}); 
	var sessionId = "resumeQR"+314873;
	if(!$.cookie(sessionId)){
		$.cookie(sessionId, 0, {expires: 1});
	}
	if($.cookie(sessionId) &amp;&amp; $.cookie(sessionId) != 5){
		$('#qr_cloud_resume').removeClass('dn');
	}
	$('#qr_cloud_resume .close').click(function(){
		$('#qr_cloud_resume').fadeOut(200);
		resumeQR = parseInt($.cookie(sessionId)) + 1;
		$.cookie(sessionId, resumeQR, {expires: 1});
	});
});
</script>
			<div class="clear"></div>
			<input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655"
				id="resubmitToken"> <a rel="nofollow" title="回到顶部"
				id="backtop" style="display: none;"></a>
		</div>
		<!-- end #container -->
</div>
</s:iterator> 
</div>

	<!-- end #body -->
	<jsp:include page="footer.jsp" />

	<script src="style/js/core.min.js" type="text/javascript"></script>
	<script src="style/js/popup.min.js" type="text/javascript"></script>

	<!--  -->

	<script type="text/javascript">
$(function(){
	$('#noticeDot-1').hide();
	$('#noticeTip a.closeNT').click(function(){
		$(this).parent().hide();
	});
});
var index = Math.floor(Math.random() * 2);
var ipArray = new Array('42.62.79.226','42.62.79.227');
var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
var CallCenter = {
		init:function(url){
			var _websocket = new WebSocket(url);
			_websocket.onopen = function(evt) {
				console.log("Connected to WebSocket server.");
			};
			_websocket.onclose = function(evt) {
				console.log("Disconnected");
			};
			_websocket.onmessage = function(evt) {
				//alert(evt.data);
				var notice = jQuery.parseJSON(evt.data);
				if(notice.status[0] == 0){
					$('#noticeDot-0').hide();
					$('#noticeTip').hide();
					$('#noticeNo').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}else{
					$('#noticeDot-0').show();
					$('#noticeTip strong').text(notice.status[0]);
					$('#noticeTip').show();
					$('#noticeNo').text('('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
					$('#noticeNoPage').text(' ('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
				}
				$('#noticeDot-1').hide();
			};
			_websocket.onerror = function(evt) {
				console.log('Error occured: ' + evt);
			};
		}
};
CallCenter.init(url);
</script>

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