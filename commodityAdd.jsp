<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>欢迎进入系统后台</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8"><LINK 
href="<%=basePath %>admin/images/syscome.files/Admin.css" rel=stylesheet>
<SCRIPT language=javascript src="<%=basePath %>images/syscome.files/Admin.js"></SCRIPT>

<STYLE type=text/css>.STYLE1 {
	FONT-WEIGHT: bold; COLOR: #0099ff
}

</STYLE>
<script language=javascript>
function check()
{	var name=document.getElementById("name").value;
	var manufacturer=document.getElementById("manufacturer").value;
	var Image=document.getElementById("Image").value;
	var commodityDepict=document.getElementById("commodityDepict").value;
	var commodityPrice=document.getElementById("commodityPrice").value;
	var webPrice=document.getElementById("webPrice").value;
	var commodityAmount=document.getElementById("commodityAmount").value;

if(name==null||name==''){
		alert("商品名不能为空！");
		return false;
		}
		if(manufacturer==null||manufacturer==''){
		alert("生产厂家不能为空！");
		return false;
		}
		if(Image==null||Image==''){
		alert("商品图片不能为空！");
		return false;
		}
		if(commodityDepict==null||commodityDepict==''){
		alert("商品描述不能为空！");
		return false;
		}
		if(commodityPrice==null||commodityPrice==''){
		alert("商品价格不能为空！");
		return false;
		}
		if(webPrice==null||webPrice==''){
		alert("商城价格不能为空！");
		return false;
		}
		if(commodityAmount==null||commodityAmount==''){
		alert("商品总数量不能为空！");
		return false;
		}
