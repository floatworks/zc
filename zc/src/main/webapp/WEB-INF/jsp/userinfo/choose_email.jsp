<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->
<%@include file="/WEB-INF/jsp/include.jsp"%>
<%@include file="/WEB-INF/jsp/index_title.jsp"%>
<head>
<meta charset="UTF-8">

<meta name="description" content="">
<meta name="keywords" content="">

<title>密码找回</title>
<style type="text/css">
.find-ways {
border: 1px solid #D4D4D4;
list-style: none;
background: #FFF;
}.find-ways .way--last {
border-bottom: none;
}
.find-ways .way__content {
position: relative;
margin: 0 auto;
padding: 32px 0 32px 100px;
height: 36px;
width: 410px;
font-family: '宋体';
font-size: 12px;
}
.find-ways .way__content .immi-retrieve {
float: right;
}

.find-ways .way__content .icon--email {
background-position: 0 -62px;
}
.find-ways .way__content .icon {
position: absolute;
left: 20px;
top: 25px;
width: 50px;
height: 50px;
background: url(images/sp-retrieve-24.vb2c25215.png) 0 -60px;
_background: url(images/sp-retrieve.v7ca37be3.png) 0 -60px;
}

.find-ways .way__content .title {
display: block;
font-size: 14px;
font-weight: 700;
color: #333;
}

li {
list-style: none;
}

.find-ways .way__content .description {
display: block;
width: 270px;
font-size: 12px;
font-weight: 400;
color: #999;
}




</style>
 

   <script type="text/javascript">
	$(function(){
		var login={};
		login={
			
				initlogin:function(){
					//登录
					$("#btnNext").bind('click',function(){
						
							var formJson=$("#loginForm").serializeArray();
							$.post("userinfo/beginSend.html",formJson,function(data){
								var d=$.eval2(data);
								if(d.success){
									//login success;
									url="userinfo/send_email.html";
									if($.browser.msie) {
										url="../userinfo/send_email.html";
									}
									var href=window.location;
									if(/^.*choose_email.*/.test(href)){
										window.location=url;
									}else{
									window.location.reload();
										
									}
									//window.location=url;
								}else{
									$.alert("找回密码提示","参数有误");
								}
							});
						
					});
				}
		};
		
		function main(){
			
			login.initlogin();
		}
		
		main();
	})
	
	document.onkeydown = function (e) { 
var theEvent = window.event || e; 
var code = theEvent.keyCode || theEvent.which; 
if (code == 13) { 
$("#btnNext").click(); 
} 
} 

</script>
</head>
<body>
  
  
  <div class="clear"></div>
  
  <section id="main" class="entire_width">
    <div class="container_12">      
       <div id="content">
		<div class="grid_12">
			<h1 class="page_title">找回登录密码</h1>
		</div><!-- .grid_12 -->
		
		<div class="grid_12">
		<ul class="steps-bar steps-bar--dark cf" >
            <li class="step step--pre" style="z-index:4;margin-left: -50px;">
                <span class="step__num">1.</span>
                <span>确认账号</span>
                
                <span class="arrow__background"></span>
                <span class="arrow__foreground"></span>
            </li>
            <li class="step step--first step--current" style="z-index:3">
                <span class="step__num">2.</span>
                <span>选择验证方式</span>
                
                <span class="arrow__background"></span>
                <span class="arrow__foreground"></span>
            </li>
            <li class="step step--pre" style="z-index:2">
                <span class="step__num">3.</span>
                <span>验证/修改</span>
                
                <span class="arrow__background"></span>
                <span class="arrow__foreground"></span>
            </li>
            <li class="step step--pre" style="z-index:1">
                <span class="step__num">4.</span>
                <span>完成</span>
                
            </li>
        </ul>
      
      <h3 class="retrieve-tips">您正在为账户<em>${userName }</em>重置登录密码，请选择找回方式：</h3>
      
  
        <ul class="find-ways">
            <li class="way way--last">
                <form class="way__content cf" method="POST" id="loginForm">
                    <input type="hidden" id="userName" name="userName" value="${userName }">
                    <input  type="button" id="btnNext" class="button blue" style="height: 35px;" value="立即找回">
                 
                    <i class="icon icon--email"></i>
                    <span class="title">通过绑定的邮箱</span>
                    <span class="description">安全链接将发送到您绑定的邮箱</span>
                </form>
            </li>
        </ul>
       
                </div><!-- .grid_6 -->
		
		
       </div><!-- #content -->
       
      <div class="clear"></div>
    </div><!-- .container_12 -->
  </section><!-- #main -->
  
  <div class="clear"></div>
    
  <footer>
     <div id="footer">
    <div class="container">
        <span>浙ICP备11036615号-1 浙公网安备888888888</span>

        <div class="site-info">
           

            <a href="mailto:xhymmc@163.com" alt="Keep in touch :)">邮件反馈</a>
            <a href="#">关于我们</a>
            <a href="userinfo/protocol.html">用户协议</a>
            <span>© 2014 小众派</span>
        </div>
    </div>
</div>
    
  
  </footer>
 
</body>
</html>
