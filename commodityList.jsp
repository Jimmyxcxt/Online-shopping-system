<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>欢迎进入系统后台</TITLE>
<META http-equiv=Content-Type content="text/html; charset=UTF-8">
<LINK href="<%=basePath %>admin/images/syscome.files/Admin.css" rel=stylesheet>
<SCRIPT language=javascript src="<%=basePath %>images/syscome.files/Admin.js"></SCRIPT>

<STYLE type=text/css>.STYLE1 {
	FONT-WEIGHT: bold; COLOR: #0099ff
}
</STYLE>

<META content="MSHTML 6.00.2900.5726" name=GENERATOR></HEAD>
<BODY><BR>
<TABLE class=tableborder cellSpacing=1 cellPadding=3 width="95%" align=center 
border=0>
</TABLE><BR>
<TABLE cellSpacing=1 cellPadding=3 width="95%" align=center bgColor=#6ab6b6 
border=0>
  <TBODY>
  <TR>
    <TH colSpan=10 height=24>【商品列表】</TH> 
   </TR>
     <TR>
    <TD class=forumrow align="center" width="8%">商品编号</TD>
    <TD class=forumrow align="center" >商品名称</TD>
    <TD class=forumrow align="center" width="10%">商品分类</TD>
    <TD class=forumrow align="center" width="15%">生产厂家</TD>
    <TD class=forumrow align="center" width="8%">商品价格</TD>
    <TD class=forumrow align="center" width="8%">商城价格</TD>
    <TD class=forumrow align="center" width="6%">商品总数量</TD>
    <TD class=forumrow align="center" width="6%">商品剩余数量</TD>
    <TD class=forumrow colspan="2" width="8%">操作</TD>
  </TR>

