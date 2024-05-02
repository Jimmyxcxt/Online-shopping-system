﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="js/style.css" />
<style>
.main_iframe {
	Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 92%
	</style>
<script type="text/javascript" src="js/boxOver.js"></script>
	<script>
function check(){

   var username=document.getElementById("username").value;
   var email=document.getElementById("email").val;
   var address=document.getElementById("address").value;
   var name=document.getElementById("name").value;
   var phone=document.getElementById("phone").value;
   var post=document.getElementById("post").value;
   

}
</script>


 <script>
  function fun(t)
  {
    t.style.display='';
  }
  function show(t)
  {
    t.style.display='none';
    }
 </script>

 </head>
<body>

<div id="main_container">
  <div class="top_bar"></div>
	<div id="header">
	
	 <div id="divstr"><br/><h2>欢迎来到网上商城</h2><h3><script language=JavaScript >
var today = new Date();
var strDate = ( today.getYear() + "年" + (today.getMonth() + 1) + "月" + today.getDate() + "日");

var n_day = today.getDay();
var ww;

switch (n_day)
{
case 0:{ww =  "星期日";} break;
case 1:{ww =  "星期一";} break;
case 2:{ww =  "星期二";} break;
case 3:{ww =  "星期三";} break;
case 4:{ww =  "星期四";} break;
case 5:{ww =  "星期五";} break;
case 6:{ww =  "星期六";} break;
case 7:{ww =  "星期日";} break;
}
strDate="今天是:" + ww+"</font>";
document.write(strDate);
 </script></h3></div>
	  <!-- end of oferte_content-->
</div>
    
   <div id="main_content"> 
            <div id="menu_tab">
            <div class="left_menu_corner"></div>
                    <ul class="menu">
                         <li><a href="GoIndexAction.action" class="nav1">首页</a></li>
                         <li class="divider"></li>
                         <li><a href="GoIndexAction.action" class="nav2">在线购物</a></li>
                         <li class="divider"></li>
                         <li><a href="showCar.jsp" class="nav5">我的购物车</a></li>
                         <li class="divider"></li>
                         
                         <c:if test="${empty sessionScope.user.username}">
                         <li class="divider"></li>
                         <li><a href="login.jsp" class="nav3">用户登录</a></li>
                         <li class="divider"></li>                         
                         <li><a href="register.jsp" class="nav6">用户注册 </a></li>

                         </c:if>

                         <li class="divider"></li>
                    </ul>

             <div class="right_menu_corner"></div>
            </div><!-- end of menu tab -->
    
    </div> 
    
    <div class="crumb_navigation">
    导航:  <span class="current"><a href="GoIndexAction.action">首页</a> &gt;&gt;找回密码</span>
    
    </div>
    <div align="right"><form name="searchform" action="CommodityAction!findCommodityByName.action" method="post">
    <input id="commodity.commodityName" name="commodity.commodityName" style="font-size: 10pt; color: rgb(85, 85, 85);" onfocus="if(this.value=='请输入您所要查找的商品名称'){this.value='';}" onblur="if(this.value==''){this.value='请输入您所要查找的商品名称';}" value="请输入您所要查找的商品名称" size="25" maxlength="30" type="text" />
<input name="搜索" type="submit" value="搜索" />
    </form></div>
    
    <table border="0" cellpadding="0" cellspacing="0" align="center" width=100% height="400px" bgcolor="#e9e7e7">
    <tr>
    <td width=20%>
      </td>
    
    <td class="center_content" width=100% height=500px align="center" >
    <form name="myform" method="post" action="UserAction!findUser.action" id="myform" onsubmit="return check();">
   
  <table width=500 border="0" align="center" bgcolor="#e9e7e7">
  <tr ><td  colspan=3  bgcolor="#c0c0c0" align="center" ><h3>输入您注册时的信息</h3></td> 
     
    </tr>
    <tr > 
      <td width=60 height=30>用户名:</td>
      <td width=100> 
        <input id="username" type="text" name="user.username" size="20" onclick="fun(msg)"   onblur="show(msg)"/>
      </td>
      <td width=220> 
        <div  id=msg style="color:#ff0000;display:none;">用户名长度为8至15位</div>
      </td>
    </tr>
      
    <tr> 
      <td height=30>用户姓名:</td>
      <td width=100> 
        <input id="name" type="text" name="user.name" size="20" onclick="fun(msg3)"  onblur="show(msg3)"/>
      </td>
       <td width=180> 
        <div  id=msg3 style="color:#ff0000;display:none;">输入您的姓名</div>
      </td>
    </tr>
    <tr> 
      <td height=30>性别:</td>
      <td width=100> 
        <input  type="radio" name="user.sex" value="男" checked="checked"/>男
        <input  type="radio" name="user.sex" value="女"/>女</td>
        <td > 
       
      </td>
    </tr>
    <tr>
    <td height=30>用户电话:</td>
      <td width=100> 
        <input id="phone" type="text" name="user.phone" size="20" onclick="fun(msg4)"  onblur="show(msg4)"/>
      </td>
       <td width=180> 
        <div  id=msg4 style="color:#ff0000;display:none;">输入您联系电话</div>
      </td>
    </tr>
    <tr>
    <td height=30>邮编:</td>
      <td width=100> 
        <input id="post" type="text" name="user.post" size="20" onclick="fun(msg7)"  onblur="show(msg7)"/>
      </td>
       <td width=180> 
        <div  id=msg7 style="color:#ff0000;display:none;">输入您的邮编，请认真填写</div>
      </td>
    </tr>
    <tr>
    <td height=30>收货地址:</td>
      <td width=100> 
        <input id="address" type="text" name="user.address" size="20" onclick="fun(msg5)"  onblur="show(msg5)"/>
      </td>
       <td width=180> 
        <div  id=msg5 style="color:#ff0000;display:none;">输入您的收货地址，请认真填写</div>
      </td>
    </tr>
    <tr> 
      <td height=30>电子邮件:</td>
      <td width=100> 
        <input id="email" type="text" name="user.email" size="20" onclick="fun(msg6)"  onblur="show(msg6)"/>
      </td>
      <td width=180> 
        <div  id=msg6 style="color:#ff0000;display:none;">填写如111111@163.com的地址</div>
      </td>
    </tr>
  <tr><td><input type="hidden" name="user.money" value="1000"/>
  </td><td> <input type="submit" name="submit1" value="下一步" />
    <input type="reset" name="Submit2" value="重置" /></td>
  </tr>
  <tr>
  <td></td><td><h2> ${findUsernull}</h2></td></tr>
  </table>
</form>
      
	</td>
    </tr>
    </table>
  
   <div class="footer" align="center"><br />&copy;&nbsp;&nbsp;|&nbsp;XXXX&nbsp;|&nbsp;版权所有&nbsp;|&nbsp;网上商城系统<br/><a href="admin/login.jsp">后台管理</a></div>

</div>

</body>
</html>

