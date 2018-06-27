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

<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
<script type="text/javascript">
var ctx = "http://www.bole.com";
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
<s:action name="myhome"></s:action>
<div id="body">
	<jsp:include page="lock.jsp"></jsp:include>
		
    <div id="container">
        <!-- <script src="style/js/swfobject_modified.js" type="text/javascript"></script> -->
        <div class="clearfix">
        
        	<s:iterator value="#session.com_shen" var="com"  status='st' >	
        	
        		
            <div class="content_l">           
	                <div class="c_detail">
	                	<div style="background-color:#fff;" class="c_logo">
		                	<a title="公司LOGO" id="logoShow" class="inline cboxElement" href="#logoUploader">
		                	<img src="style/images/<s:property value='#com.logo'></s:property>" width="190"
											height="190" alt="CCIC" />
	                        </a>
		                </div>
	                    <div class="c_box companyName">
	                    		                   			<h2 title="<s:property value='#com.name'></s:property>"><s:property value='#com.name'></s:property></h2>
	                   			                        
	                        	                        	<em class="unvalid"></em>
	                        	<a target="_blank" class="applyC" >伯乐认证</a>
	                        	                        <div class="clear"></div>
	                       	
	                       		                   			<h1 title="<s:property value='#com.name'></s:property>" class="fullname"><s:property value='#com.name'></s:property></h1>
	                        	                        
	                       
	                        <h3 class="dn">已选择标签</h3>
	                        <ul style="overflow:auto" id="hasLabels" class="reset clearfix">
	                        			                        	<li><span><s:property value='#com.short_introduce'></s:property></span></li>

	                        </ul>
	                        
	                        </s:iterator>	
	                        
	                        <div class="dn" id="addLabels">
	                        	<a id="changeLabels" class="change" href="javascript:void(0)">换一换</a>
	                        	<input type="hidden" value="1" id="labelPageNo">
	                            <input type="submit" value="贴上" class="fr" id="add_label">
                            	<input type="text" placeholder="添加自定义标签" name="label" id="label" class="label_form fr">	
	                            <div class="clear"></div>
	                            <ul class="reset clearfix"> </ul>
	                            <a id="saveLabels" class="btn_small" href="javascript:void(0)">保存</a>
	                            <a id="cancelLabels" class="btn_cancel_s" href="javascript:void(0)">取消</a>
	                        </div>
	                    </div>

	                	<div class="clear"></div>
	                </div>
                
                	<div class="c_breakline"></div>
       
       	
       				<div id="Profile">
			            				        	<div class="profile_wrap">
					             <!--无介绍 -->
									<dl class="c_section dn">
					                	<dt>
					                    	<h2><em></em>公司介绍</h2>
					                    </dt>
					                    <dd>
					                    	<div class="addnew">
					                        	详细公司的发展历程、让求职者更加了解你!<br>
					                            <a id="addIntro" href="javascript:void(0)">+添加公司介绍</a>
					                        </div>
					                    </dd>
					                </dl>
					    
					            <!--有介绍-->
					               <dl class="c_section">
					               		<dt>
					                   		<h2><em></em>公司介绍</h2>
					                   	</dt>
					                   	<dd>
					                   		<div class="c_intro"><s:property value='#com.introduce'></s:property></div>
					                   		<!-- <a title="编辑公司介绍" id="editIntro" class="c_edit" href="javascript:void(0)"></a> -->
					                   	</dd>
					               	</dl>
				            </div>
				                 	
	     			</div><!-- end #Profile -->
      	
      	<!--[if IE 7]> <br /> <![endif]-->
	    
	        	 		        	<!--无招聘职位-->
						

						<!-- 用户是否激活 0-否；1-是 -->
						
							<!-- 用户是否激活 0-否；1-是 -->

							<a class="btn fr"
								href="admin_back_com.action?com_id=<s:property value="#com.id"></s:property>&status=2" style="background-color:red">驳回审核</a>

						
						<br><br><br>
						
							<!-- 用户是否激活 0-否；1-是 -->

							<a  class="btn fr"
								href="admin_back_com.action?com_id=<s:property value="#com.id"></s:property>&status=0">通过审核</a>
 
		             
	          	
	          	<input type="hidden" value="" name="hasNextPage" id="hasNextPage">
	          	<input type="hidden" value="" name="pageNo" id="pageNo">
	          	<input type="hidden" value="" name="pageSize" id="pageSize">
          		<div id="flag"></div>
            </div>	<!-- end .content_l -->
            
            <div class="content_r">
            	<div id="Tags">
	            	<div id="c_tags_show" class="c_tags solveWrap">
	                    <table>
	                        <tbody><tr>
	                            <td width="45">地点</td>
	                            <td><s:property value='#com.address'></s:property></td>
	                        </tr>
	                        <tr>
	                            <td>领域</td>
	                            <td title="移动互联网"><s:property value='#com.domain'></s:property></td>
	                        </tr>
	                        <tr>
	                            <td>规模</td>
	                            <td><s:property value='#com.size'></s:property></td>
	                        </tr>
	                        <tr>
	                            <td>主页</td>
	                            <td>
	                            <a rel="nofollow" title="<s:property value='#com.website'></s:property>" target="_blank" href="<s:property value='#com.website'></s:property>"><s:property value='#com.website'></s:property></a>
            							                            </td>
	                        </tr>
	                    </tbody></table>
	                   
	                </div>
       			</div><!-- end #Tags -->
       			
       			<dl class="c_section c_stages">
                	<dt>
                    	<h2><em></em>融资阶段</h2>
                    </dt>
                    <dd>
                    	<ul class="reset stageshow">
                    		<li>目前阶段：<span class="c5"><s:property value='#com.stage'></s:property></span></li>
                    	</ul>
                    </dd>
                </dl><!-- end .c_stages -->
	       	
        </div>
   	</div>

<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
	<div style="width:650px;height:470px;" class="popup" id="logoUploader">
		<object width="650" height="470" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="FlashID">
		  <param value="../../flash/avatar.swf?url=http://www.lagou.com/cd/saveProfileLogo.json" name="movie">
		  <param value="high" name="quality">
		  <param value="opaque" name="wmode">
		  <param value="111.0.0.0" name="swfversion">
		  <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
		  <param value="../../Scripts/expressInstall.swf" name="expressinstall">
		  <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
		  <!--[if !IE]>-->
		  <object width="650" height="470" data="../../flash/avatar.swf?url=http://www.lagou.com/cd/saveProfileLogo.json" type="application/x-shockwave-flash">
		    <!--<![endif]-->
		    <param value="high" name="quality">
		    <param value="opaque" name="wmode">
		    <param value="111.0.0.0" name="swfversion">
		    <param value="../../Scripts/expressInstall.swf" name="expressinstall">
		    <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
		    <div>
		      <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
		      <p><a href="http://www.adobe.com/go/getflashplayer"><img width="112" height="33" src="style/images/get_flash_player.gif" alt="获取 Adobe Flash Player"></a></p>
		    </div>
		    <!--[if !IE]>-->
		  </object>
		  <!--<![endif]-->
		</object>
	</div><!-- #logoUploader -->
</div>
<!------------------------------------- end ----------------------------------------->

<script src="style/js/company.min.js" type="text/javascript"></script>
<script>
var avatar = {};
avatar.uploadComplate = function( data ){
	var result = eval('('+ data +')');
	if(result.success){
		jQuery('#logoShow img').attr("src",ctx+ '/'+result.content);
		jQuery.colorbox.close();
	}
};
</script>
			<div class="clear"></div>
			<input type="hidden" value="d1035b6caa514d869727cff29a1c2e0c" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: inline;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="about.jsp">联系我们</a>
		    <a target="_blank" href="http://www.bole.com/af/zhaopin.jsp">互联网公司导航</a>
			<div class="copyright">&copy;2017-2018 Bole <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script src="style/js/core.min.js" type="text/javascript"></script>
<script src="style/js/popup.min.js" type="text/javascript"></script>

<!--  -->


<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>
