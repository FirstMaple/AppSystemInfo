<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
request.setAttribute("path", path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>App开发者平台登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link href="statics/css/bootstrap.min.css" rel="stylesheet">
    <link href="statics/css/font-awesome.min.css" rel="stylesheet">
    <link href="statics/css/nprogress.css" rel="stylesheet">
    <link href="statics/css/animate.min.css" rel="stylesheet">
    <link href="statics/css/custom.min.css" rel="stylesheet">

  </head>
  
   <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">
            <form id="myForm" method="post" action="${path }/devUser/getLogin.html">
              <h1 style="color:black;">APP开发者平台</h1>
          	  <div>${error }</div>
              <div>
                <input name="name" type="text" class="form-control" placeholder="请输入用户名" required="" />
              </div>
              <div>
                <input name="pwd" type="password" class="form-control" placeholder="请输入密码" required="" />
              </div>
              <div>
              <input type="submit" value="登	录" class="btn btn-default submit"/>
                <reset class="btn btn-default submit" onclick="formReset();">重	填</reset>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <div class="clearfix"></div>
                <div>
                  <p>&copy;2016 All Rights Reserved</p>
                </div>
                <br />
              </div>
            </form>
          </section>
      </div>
    </div>
  </body>
  <script type="text/javascript">  
	function formReset(){  
		document.getElementById("myForm").reset();  
	}  
</script>
</html>
