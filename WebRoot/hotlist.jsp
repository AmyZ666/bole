<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	content="伯乐,伯乐网,伯乐招聘,拉钩, 拉钩网 ,互联网招聘,伯乐互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 伯乐官网, 伯乐百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
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
<s:action name="position"></s:action>
	<ul class="reset hotabbing">
		<li class="current">热门职位</li>
		<li>最新职位</li>
	</ul>
	<div id="hotList">
		<ul class="hot_pos reset">
			<s:iterator value="#session.poss" var="pos"  status='st' >
			
				<s:if test="#st.Odd">
					<li class="clearfix">	
				</s:if>
				<s:else>
				<li class="odd clearfix">
				</s:else>
					<div class="hot_pos_l">
						<div class="mb10">
							<a href="toudi.action?pos_id=<s:property value='#pos.id'></s:property>" target="_blank"><s:property value="#pos.name"></s:property></a> &nbsp; <span
								class="c9">[<s:property value="#pos.address"></s:property>]</span>
						</div>
						<span><em class="c7">月薪： </em><s:property value="#pos.salary"></s:property></span> <span><em
							class="c7">经验：</em> <s:property value="#pos.exp"></s:property></span> <span><em class="c7">最低学历： </em><s:property value="#pos.educution"></s:property></span>
						<br /> <span><em class="c7">职位诱惑：</em><s:property value="#pos.tempt"></s:property></span> <br /> <span>1天前发布</span>
						<!-- <a  class="wb">分享到微博</a> -->
					</div>
					<div class="hot_pos_r">
						<div class="mb10 recompany">
							<a href="h/c/399.html" target="_blank"><s:property value="#pos.com_name"></s:property></a>
						</div>
						<span><em class="c7">领域：</em> <s:property value="#pos.domain"></s:property></span> <span><em
							class="c7">创始人：</em><s:property value="#pos.com_founder"></s:property></span> <br /> <span><em class="c7">阶段：</em>
							<s:property value="#pos.stage"></s:property></span> <span><em class="c7">规模：</em><s:property value="#pos.size"></s:property></span>
						<ul class="companyTags reset">
							<s:iterator value="#session.wposs" var="wpos"  status='sta' >
								<s:if test="#wpos.pos_id==#pos.id">
									<li><s:property value="#wpos.name"></s:property></li>
								</s:if>
							</s:iterator>
						</ul>
					</div>
				</li>
				
			</s:iterator>
			<a href="listAll.jsp" class="btn fr"
				target="_blank">查看更多</a>
		</ul>
		<ul class="hot_pos hot_posHotPosition reset" style="display:none;">
			<s:iterator value="#session.poss2" var="pos"  status='st' >
				<s:if test="#st.Odd">
					<li class="clearfix">	
				</s:if>
				<s:else>
				<li class="odd clearfix">
				</s:else>
					<div class="hot_pos_l">
						<div class="mb10">
							<a href="toudi.action?pos_id=<s:property value='#pos.id'></s:property>" target="_blank"><s:property value="#pos.name"></s:property></a> &nbsp; <span
								class="c9">[<s:property value="#pos.address"></s:property>]</span>
						</div>
						<span><em class="c7">月薪： </em><s:property value="#pos.salary"></s:property></span> <span><em
							class="c7">经验：</em> <s:property value="#pos.exp"></s:property></span> <span><em class="c7">最低学历： </em><s:property value="#pos.educution"></s:property></span>
						<br /> <span><em class="c7">职位诱惑：</em><s:property value="#pos.tempt"></s:property></span> <br /> <span>1天前发布</span>
						<!-- <a  class="wb">分享到微博</a> -->
					</div>
					<div class="hot_pos_r">
						<div class="mb10 recompany">
							<a href="h/c/399.html" target="_blank"><s:property value="#pos.com_name"></s:property></a>
						</div>
						<span><em class="c7">领域：</em> <s:property value="#pos.domain"></s:property></span> <span><em
							class="c7">创始人：</em><s:property value="#pos.com_founder"></s:property></span> <br /> <span><em class="c7">阶段：</em>
							<s:property value="#pos.stage"></s:property></span> <span><em class="c7">规模：</em><s:property value="#pos.size"></s:property></span>
						<ul class="companyTags reset">
							<s:iterator value="#session.wposs" var="wpos"  status='sta' >
								<s:if test="#wpos.pos_id==#pos.id">
									<li><s:property value="#wpos.name"></s:property></li>
								</s:if>
							</s:iterator>
						</ul>
					</div>
				</li>
			</s:iterator>
			
				
			<a href="listAll.jsp" class="btn fr"
				target="_blank">查看更多</a>
		</ul>
	</div>


	<script type="text/javascript" src="style/js/core.min.js"></script>
	<script type="text/javascript" src="style/js/popup.min.js"></script>

</body>
</html>
