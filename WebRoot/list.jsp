<%@page import="model.product"%>  
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8"
	src="style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld" />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>前端开发全国-职位搜索-伯乐网-最专业的互联网招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />
<meta
	content="前端开发招聘  全国地区招聘 紫色医疗招聘前端开发,月薪:10k-20k,要求:本科及以上学历,3-5年工作经验。职位诱惑：借移动医疗大势享受坐直升飞机的职场发展 公司规模:15-50人移动互联网 ,健康医疗类公司招聘信息汇总  最新最热门互联网行业招聘信息，尽在伯乐网"
	name="description">
<meta
	content="前端开发招聘,全国地区前端开发招聘,紫色医疗招聘前端开发,移动互联网 类公司招聘信息汇总,健康医疗类公司招聘信息汇总,伯乐招聘,伯乐网,互联网招聘"
	name="keywords">
<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon"
	href="http://www.lagou.com/h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="style/css/style.css" />
<link rel="stylesheet" type="text/css" href="style/css/external.min.css" />
<link rel="stylesheet" type="text/css" href="style/css/popup.css" />
<script src="style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/jquery.lib.min.js"></script>
<script src="style/js/ajaxfileupload.js" type="text/javascript"></script>
<script type="text/javascript" src="style/js/additional-methods.js"></script>

<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
<![endif]-->
<script type="text/javascript">
var youdao_conv_id = 271546; 
</script>
<script type="text/javascript" src="style/js/conv.js"></script>
</head>
<body>
	<s:action name="list"></s:action>
	<jsp:include page="lock.jsp"></jsp:include>
	<div id="header">
		<div class="wrapper">
			<a class="logo" href="index.jsp"> <img width="229" height="43"
				alt="伯乐招聘-专注互联网招聘" src="style/images/logoko111.png"> </a>
			<ul id="navheader" class="reset">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="companylist.jsp">公司</a></li>
				<li><a target="_blank" href="forum.jsp">论坛</a></li>
				<%
						if (session.getAttribute("status").equals(1)) {
					%>
				<li><a rel="nofollow" href="">简历管理</a>
				</li>
				<li><a rel="nofollow" href="create.jsp">发布职位</a></li>
				<%
						} else {
					%>
				<li><a rel="nofollow" href="#">我的简历</a></li>
				<%
						}
					%>
			</ul>
			<jsp:include page="header.jsp" />
		</div>
	</div>
	<!-- end #header -->
	<div id="container">

	 <div class="sidebar"> 
			<div id="options" class="greybg">
				<span style="font-size:20px;font-weight:bold;padding-left:30px;">广告位出租</span>
			</div>

			<!-- QQ群 -->
			<div class="qq_group">
				加入<span>前端</span>QQ群
				<div class="f18">跟同行聊聊</div>
				<p>160541839</p>
			</div>

			<!-- 对外合作广告位  -->
			<a href="http://www.w3cplus.com/" target="_blank" class="partnersAd">
				<img src="style/images/w3cplus.png" width="230" height="80"
				alt="w3cplus" /> </a> <a href="" target="_blank" class="partnersAd">
				<img src="style/images/jquery_school.jpg" width="230" height="80"
				alt="JQ学校" /> </a> <a href="http://linux.cn/" target="_blank"
				class="partnersAd"> <img src="style/images/linuxcn.png"
				width="230" height="80" alt="Linux中文社区" /> </a> <a
				href="http://zt.zhubajie.com/zt/makesite? utm_source=lagou.com&utm_medium=referral&utm_campaign=BD-yl"
				target="_blank" class="partnersAd"> <img
				src="style/images/zhubajie.jpg" width="230" height="80" alt="猪八戒" />
			</a> <a href="http://www.imooc.com" target="_blank" class="partnersAd">
				<img src="style/images/muke.jpg" width="230" height="80" alt="幕课网" />
			</a>
			<!-- 	            <a href="http://www.osforce.cn/" target="_blank" class="partnersAd">
	            	<img src="style/images/osf-lg.jpg" width="230" height="80" alt="开源力量"  />
	            </a>
	         -->
		</div> 

		<div class="content">
			<div id="search_box">
				<form id="searchForm" name="searchForm" action="list.jsp"
					method="get">
					<ul id="searchType">
						<li data-searchtype="1" class="type_selected">职位</li>
						<li data-searchtype="4">公司</li>
					</ul>
					<div class="searchtype_arrow"></div>
					<input type="text" id="search_input" name="kd" tabindex="1"
						value="前端开发" placeholder="请输入职位名称，如：产品经理" /> <input type="hidden"
						name="spc" id="spcInput" value="1" /> <input type="hidden"
						name="pl" id="plInput" value="" /> <input type="hidden" name="gj"
						id="gjInput" value="" /> <input type="hidden" name="xl"
						id="xlInput" value="" /> <input type="hidden" name="yx"
						id="yxInput" value="" /> <input type="hidden" name="gx"
						id="gxInput" value="" /> <input type="hidden" name="st"
						id="stInput" value="" /> <input type="hidden" name="labelWords"
						id="labelWords" value="label" /> <input type="hidden" name="lc"
						id="lc" value="" /> <input type="hidden" name="workAddress"
						id="workAddress" value="" /> <input type="hidden" name="city"
						id="cityInput" value="全国" /> <input type="submit"
						id="search_button" value="搜索" />
				</form>
			</div>
			<style>
.ui-autocomplete {
	width: 488px;
	background: #fafafa !important;
	position: relative;
	z-index: 10;
	border: 2px solid #91cebe;
}

.ui-autocomplete-category {
	font-size: 16px;
	color: #999;
	width: 50px;
	position: absolute;
	z-index: 11;
	right: 0px; /*top: 6px; */
	text-align: center;
	border-top: 1px dashed #e5e5e5;
	padding: 5px 0;
}

.ui-menu-item {
	*width: 439px;
	vertical-align: middle;
	position: relative;
	margin: 0px;
	margin-right: 50px !important;
	background: #fff;
	border-right: 1px dashed #ededed;
}

.ui-menu-item a {
	display: block;
	overflow: hidden;
}
</style>
			<script type="text/javascript" src="style/js/search.min.js"></script>
			<dl class="hotSearch">
				<dt>热门搜索：</dt>
				 <s:iterator value="#session.pros" var="pro"  status='st' >
		 			<dd><a href="list.jsp?<s:property value="#pro.id"></s:property>"><s:property value="#pro.name"></s:property></a></dd>
				 </s:iterator>
			</dl>
			<div class="breakline"></div>
			
			<div id="tip_didi" class="dn">
				<span>亲，“嘀嘀打车”已更名为“滴滴打车”了哦，我们已帮您自动跳转~</span> <a href="javascript:;">我知道了</a>
			</div>

			<ul class="hot_pos reset">
				<s:iterator value="#session.poss_all" var="pos"  status='st' >
			
				<s:if test="#st.Odd">
					<li class="clearfix">	
				</s:if>
				<s:else>
				<li class="odd clearfix">
				</s:else>
					<div class="hot_pos_l">
						<div class="mb10">
							<a href="h/jobs/147822.html" target="_blank"><s:property value="#pos.name"></s:property></a> &nbsp; <span
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
				
			</ul>
			<div class="Pagination"></div>
		</div>

		<script>
$(function(){
	/***************************
 	 * 分页
 	 */
 	 						$('.Pagination').pager({
		      currPage: 1,
		      pageNOName: "pn",
		      form: "searchForm",
		      pageCount: 30,
		      pageSize:  5 
		});
		
	$(".workplace dd").not('.more').children('a').click(function(){
		$('#lc').val(1);
		editForm("cityInput" , $(this).jsp());
	});
	
	$("#box_expectCity dd span").click(function(){
		$('#lc').val(1);
		editForm("cityInput" , $(this).jsp());
	});
	
	$('#options dd div').click(function(){
		var firstName = $(this).parents('dl').children('dt').text();
		var fn = $.trim(firstName);
		if (fn=="月薪范围"){
			editForm("yxInput" , $(this).jsp());
		}
		else if(fn=="工作经验"){
			editForm("gjInput" , $(this).jsp());
		}
		else if(fn=="最低学历"){
			editForm("xlInput" , $(this).jsp());
		}
		else if(fn=="工作性质"){
			editForm("gxInput" , $(this).jsp());
		}
		else if(fn=="发布时间"){
			editForm("stInput" , $(this).jsp());
		}
	});
	
	$('#selected ul').delegate('li span.select_remove','click',function(event){
		var firstName = $(this).parent('li').find('strong').text();
		var fn = $.trim(firstName);
		if (fn=="月薪范围")
			editForm("yxInput" , "");
		else if(fn=="工作经验")
			editForm("gjInput" , "");
		else if(fn=="最低学历")
			editForm("xlInput" , "");
		else if(fn=="工作性质")
			editForm("gxInput" , "");
		else if(fn=="发布时间")
			editForm("stInput" , "");
	});
	
	/* search结果飘绿	*/
	(function($) {
		var searchVal = $('#search_input').val();
		var reg = /\s/g;     
		searchVal = searchVal.replace(reg, "").split(""); 
		
		var resultL = '';
		var resultR = '';
		$('.hot_pos li').each(function(){
			resultL = $('.hot_pos_l a',this).text().split("");
			$.each(resultL,function(i,v){
				if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
					resultL[i] = '<span>'+ v +'</span>';
				}
			});
			$('.hot_pos_l a',this).jsp(resultL.join(''));
			
			resultR = $('.hot_pos_r .mb10 a',this).text().split("");
			$.each(resultR,function(i,v){
				if($.inArray(v.toLowerCase(),searchVal) != -1 || $.inArray(v.toUpperCase(),searchVal) != -1){
					resultR[i] = '<span>'+ v +'</span>';
				}
			});
			$('.hot_pos_r .mb10 a',this).jsp(resultR.join(''));
		});
		
	})(jQuery);
	
	//didi tip
   	if($.cookie('didiTip') != 1 && false){
		$('#tip_didi').show();
	}
	$('#tip_didi a').click(function(){
		$(this).parent().remove();
		$.cookie('didiTip',1,{ expires: 30, path: '/'});
	});
	
});

function editForm(inputId,inputValue){
	$("#"+inputId).val(inputValue);
	var keyword = $.trim($('#search_input').val());
	var reg =  /[`~!@\$%\^\&\*\(\)_<>\?:"\{\},\\\/;'\[\]]/ig;
	var re = /#/g;
	var r = /\./g;
	var kw = keyword.replace(reg," ");

	if(kw == ''){
		$('#searchForm').attr('action','list.jsp所有职位').submit();	
	}else{
		kw = kw.replace(re,'井');
		kw = kw.replace(r,'。');
		$('#searchForm').attr('action','list.jsp'+kw).submit();
	}
	//$("#searchForm").submit();
}
</script>

		<div class="clear"></div>
		<input type="hidden" id="resubmitToken" value="" /> <a id="backtop"
			title="回到顶部" rel="nofollow"></a>
	</div>
	<!-- end #container -->
	</div>
	<!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="h/about.jsp" target="_blank" rel="nofollow">联系我们</a> <a
				href="h/af/zhaopin.jsp" target="_blank">互联网公司导航</a> <a
				href="http://e.weibo.com/lagou720" target="_blank" rel="nofollow">伯乐微博</a>
			<a class="footer_qr" href="javascript:void(0)" rel="nofollow">伯乐微信<i></i>
			</a>
			<div class="copyright">
				&copy;2013-2014 Lagou <a target="_blank"
					href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a>
			</div>
		</div>
	</div>

<script type="text/javascript" src="style/js/Chart.min.js"></script>
<script type="text/javascript" src="style/js/home.min.js"></script>
<script type="text/javascript" src="style/js/count.js"></script>
	<script type="text/javascript" src="style/js/core.min.js"></script>
	<script type="text/javascript" src="style/js/popup.min.js"></script>

	<!--  -->

</body>
</html>