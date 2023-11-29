<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div id="top">
	<!----------------页面头部开始-------------------->
	<div class="banner">

		<img src="images/top.jpg" />
	</div>
	<!----------------页面头部结束-------------------->
	<!----------------主导航菜单开始-------------------->
	<div id="nav">
		<ul>
		<li >
			&nbsp;</li><li >&nbsp;
				
			</li><li >&nbsp;
				
			</li><li >
				
			&nbsp;</li><li >
				
			&nbsp;</li><li >
				
			&nbsp;</li><li >
				
			&nbsp;</li>
			<li >
				<a href="index.jsp"><span>首页</span> </a>
			</li>
			<li>
				<a href="myclass.jsp"><span>网站新闻</span> </a>
			</li>
			
			<li>
				<a href="jiudian.jsp"><span>酒店查看</span> </a>
			</li>
		 
			
		
			<li>
				<a href="message.jsp"><span>留言板</span> </a>
			</li>
			<li>
				<a href="admin/login.jsp" target="_blank"><span>后台管理</span> </a>
			</li>
		</ul>
	</div>
	<!----------------主导航菜单结束-------------------->
</div>
<!----------------内容区开始-------------------->
<div class="login_con">
    <%
      Object user= session.getAttribute("user");
      System.out.println(user);
      if(user==null){
     %>
	<form id="form1" name="form1" action="UserLogAction">
		<span>用户名： <input type="text" name="name" id="name"
				class="text_input" /> </span>
		<span>密码： <input type="password" name="pwd"
				id="pwd" class="text_input" /> </span>
		<span> <input type="submit" name="button" id="button"
				value="登录" class="denlu" /> </span>
		<span><a href="registered.jsp" class="zc">注册</a> </span>
		
	</form>
	<%
	}else{ %>
	<span>欢迎你：<%=user %></span>
	
	<span><a href="logout.jsp" class="zc">注销</a> </span>
	<span><a href="userinfo.jsp" class="zc">查看个人信息</a> </span>
	<span><a href="myding.jsp" class="zc">我的订单</a> </span>
	<%
	}
	 %>
</div>
