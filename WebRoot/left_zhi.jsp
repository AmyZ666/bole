<%@page import="model.product"%>  
<%@page import="model.product1"%>  
<%@page import="model.product2"%>  
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'left_zhi.jsp' starting page</title>

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
	<div id="sidebar">
		<div class="mainNavs">
			<%
				ArrayList pros1 = (ArrayList)session.getAttribute("pros1");
				ArrayList pros2 = (ArrayList)session.getAttribute("pros2");
				ArrayList pros3 = (ArrayList)session.getAttribute("pros3");
				if(pros1.size()!=0&&pros1!=null&&pros2.size()!=0&&pros2!=null&&pros3.size()!=0&&pros3!=null){
					product1 pro1=null;
					product2 pro2=null;
					product pro3=null;
			      	for(int i=0;i<pros1.size();i++){
			        	pro1=(product1)pros1.get(i);
			%>
			 
			<div class="menu_box">
				<div class="menu_main">
					<h2>
						
						 <%=pro1.getName() %><span></span>
					</h2>
					<%
						for(int j=0;j<pros3.size();j++){
							pro3=(product)pros3.get(j);
							pro2=(product2)pros2.get(pro3.getClass2_id()-1);
							if(pro3.getHot_num()>100&&(pro2.getClass1_id())==pro1.getId()){
					 %>
					 
					 	<a href="list.jsp?<%=pro3.getId() %>"><%=pro3.getName() %></a>
					
					 <%
					 		}
					 	}
					  %>
				</div>
				<div class="menu_sub dn">
					<%
						for(int k=0;k<pros2.size();k++){
							pro2=(product2)pros2.get(k);
							if(pro2.getClass1_id()==pro1.getId()){
					 %>
					<dl class="reset">
						<dt>
							<a href="h/jobs/list_后端开发?labelWords=label"> <%=pro2.getName() %> </a>
						</dt>
						<dd>
							<%
								for(int x=0;x<pros3.size();x++){
									pro3=(product)pros3.get(x);
									if(pro3.getClass2_id()==pro2.getId()&&pro3.getHot_num()>100){
							 %>
							 			<a href="list.jsp?<%=pro3.getId() %>" class="curr"><%=pro3.getName() %></a>
							 <%
							 		}else if(pro3.getClass2_id()==pro2.getId()&&pro3.getHot_num()<=100){
							 		%>
							 		<a href="list.jsp?<%=pro3.getId() %>"><%=pro3.getName() %></a>
							 		<% 
							 		
							 		}
							 		}
							  %>
			
						</dd>
					</dl>
					<%
						}
						}
					 %>
					
				</div>
			</div>
			<%
					}
				}
			 %>
		
		</div>
		<a class="subscribe" href="subscribe.html" target="_blank">订阅职位</a>
	</div>
</body>
</html>
