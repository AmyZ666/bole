<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb"><head>
</script><script type="text/javascript" async="" src="style/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>伯乐网-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="伯乐网是3W旗下的互联网领域垂直招聘网站">
<meta name="keywords" content="伯乐,伯乐网,伯乐招聘,伯乐, 伯乐网 ,互联网招聘,伯乐互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 伯乐官网, 伯乐百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
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
<script src="style/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>
<div id="body">
	
		<jsp:include page="lock.jsp"></jsp:include>
	<div id="header">
		<div class="wrapper">
			<a class="logo" href="index.jsp"> <img width="229" height="43"
				alt="伯乐招聘-专注互联网招聘" src="style/images/logoko111.png"> </a>
			<ul id="navheader" class="reset">
				<li class="current"><a href="index.jsp">首页</a></li>
				<li><a href="companylist.jsp">公司</a></li>

				<%
					if(session.getAttribute("status").equals(1)){
				 %>
				<li><a rel="nofollow" href="">简历管理</a>
				</li>
				<li><a rel="nofollow" href="create.jsp">发布职位</a></li>
				<%
					}else{
					
				 %>
				 <li><a rel="nofollow" href="jianlic.action?id=<%=session.getAttribute("id") %>">我的简历</a></li>
				 <%
				 	}
				  %>
			</ul>
			<jsp:include page="header.jsp" />
		</div>
	</div>

    <div id="container">
                	<div class="sidebar">
        		            	<a class="btn_create" href="listAll.jsp">继续投递简历</a>
            	                <dl class="company_center_aside">
		<dt>我收到的面试通知</dt>
		<dd>
		<a href="getmian.action?id=<%=session.getAttribute("id") %>">面试提醒</a> 
			</dd>
	
</dl>

            </div><!-- end .sidebar -->
            <div class="content">
            	<dl class="company_center_content">
                    <dt>
                        <h1>
                            <em></em>
                                                                       面试提醒<span></span>                        </h1>
                    </dt>
                    
                     
                    <dd>
                    	
                    	<s:iterator value="#session.poss_mi" var="mi"  status='sta' >
                   
                   
            
	                    		<ul class="reset resumeLists">
		                            	 <li data-id="1686182" class="onlineResume">
			                                <label class="checkbox">
			                                    <input type="checkbox">
			                                    <i></i>
			                                </label>
			                                <div class="resumeShow">
			                                				                      <!--               <a title="预览在线简历" target="_blank" class="resumeImg" href="resumeView.html?deliverId=1686182">
			                                    	<img src="style/images/default_headpic.png">
			                                    </a> -->
			                                    			                                    <div class="resumeIntro">
			                                        <h3 class="unread">
			                                        				                                        	<a target="_blank" title="预览jason的简历" href="resumeView.html?deliverId=1686182">
			                                        			                                            		<s:property value="#mi.name"></s:property>
		                                        		</a>
				                           	 							                           	 			<em></em>
			                                        </h3>
			                                       
			                                        <div> 
			                                        	月薪：<s:property value="#mi.salay"></s:property> 			                                        	 / 经验：<s:property value="#mi.exp"></s:property>
			                                        	 /最低学历：<s:property value="#mi.educution"></s:property>	 <br> 
			                                           	 职位诱惑：<s:property value="#mi.tempt"></s:property>  <br>                                      			                                        		
			                                            公司：	<s:property value="#mi.com_name"></s:property> 
			                                            			                                        </div>
			                                        <div class="jdpublisher">
				                                       
			                                        </div>
			                                    </div>
			                                   
			                                    <div class="links">
			                                       	<a data-deliverid="1686182" data-name="jason" data-positionid="149594" 
			                                       	data-email="888888888@qq.com" class="resume_notice" 
			                                       	href="del_mian.action?pos_id=<s:property value="#mi.id"></s:property>&user_id=<%=session.getAttribute("id") %>">删除提醒</a>
 													
 												
                                                
			                                    </div>
			                                 
			                                </div>
			                            </li>
		                            		                    	</ul><!-- end .resumeLists -->
		                            		                   
                    </s:iterator>
                  
		                    		                    				           
                    </dd>
                    
                </dl>
            </div><!-- end .content -->
<script src="style/js/jquery.ui.datetimepicker.min.js" type="text/javascript"></script>
<script src="style/js/received_resumes.min.js" type="text/javascript"></script>
<script>
</script>    
			<div class="clear"></div>
			<input type="hidden" value="8e0aac9393b44b1f925b6be8130285be" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="about.html">联系我们</a>
		    <a target="_blank" href="http://www.lagou.com/af/zhaopin.html">互联网公司导航</a>
		    <a rel="nofollow" target="_blank" href="http://e.weibo.com/lagou720">伯乐微博</a>
		    <a rel="nofollow" href="javascript:void(0)" class="footer_qr">伯乐微信<i></i></a>
			<div class="copyright">&copy;2013-2014 Lagou <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
		</div>
	</div>

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

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div><div class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" id="ui-datepicker-div"></div></body></html>
