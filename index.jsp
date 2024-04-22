<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>网上商城系统后台管理</TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<LINK href="images/style.css" type=text/css rel=stylesheet>
<STYLE>
.main_left {
	TABLE-LAYOUT: auto;
	BACKGROUND: url(images/left_bg.gif)
}

.main_left_top {
	BACKGROUND: url(images/left_menu_bg.gif);
	PADDING-TOP: 5px
}

.main_left_title {
	PADDING-LEFT: 15px;
	FONT-WEIGHT: bold;
	FONT-SIZE: 14px;
	COLOR: #fff;
	TEXT-ALIGN: left
}

.left_iframe {
	BACKGROUND: none transparent scroll repeat 0% 0%;
	VISIBILITY: inherit;
	WIDTH: 180px;
	HEIGHT: 92%
}

.main_iframe {
	Z-INDEX: 1;
	VISIBILITY: inherit;
	WIDTH: 100%;
	HEIGHT: 92%
}

TABLE {
	FONT-SIZE: 12px;
	FONT-FAMILY: tahoma, 宋体, fantasy
}

TD {
	FONT-SIZE: 12px;
	FONT-FAMILY: tahoma, 宋体, fantasy
}
</STYLE>

<SCRIPT language=javascript src="images/admin.js" type=text/javascript></SCRIPT>

<SCRIPT language=javascript src="images/Admin(1).js"></SCRIPT>

<SCRIPT>
var status = 1;
var Menus = new DvMenuCls;
document.onclick=Menus.Clear;
function switchSysBar(){
     if (1 == window.status){
		  window.status = 0;
          switchPoint.innerHTML = '<img src="images/left.gif">';
          document.all("frmTitle").style.display="none";
     }
     else{
		  window.status = 1;
          switchPoint.innerHTML = '<img src="images/right.gif">';
          document.all("frmTitle").style.display="";
     }
}
</SCRIPT>

<META content="MSHTML 6.00.2900.5726" name=GENERATOR>
</HEAD>
<BODY style="MARGIN: 0px">
	<!--导航部分-->

	<c:if test="${!empty sessionScope.admin.username}">
		<DIV class=top_table align="center" style="margin:1px auto;width:80%">
			<DIV class=top_table_leftbg>
				<DIV class=system_logo></DIV>
				<DIV class=menu>
					<UL>
						<LI id=menu_1 onmouseover=Menus.Show(this,0)
							onclick=getleftbar(this);><A href="#">商品管理</A>
							<DIV class=menu_childs onmouseout=Menus.Hide(0);>
								<UL>
									<LI><A href="include/commodityClass/commodityClassAdd.jsp"
										target="frmright">新增商品种类</A></LI>
									<LI><A
										href="CommodityClassAction!listCommodityClass.action"
										target=frmright>商品种类列表</A></LI>
									<LI><A href="CommodityAction!adCommodity.action"
										target=frmright>商品录入</A></LI>
									<LI><A href="CommodityAction!listCommodity.action"
										target=frmright>商品列表</A></LI>
								</UL>
							</DIV>
							<DIV class=menu_div>
								<IMG style="VERTICAL-ALIGN: bottom"
									src="images/menu01_right.gif">
							</DIV></LI>
						<LI id=menu_2 onmouseover=Menus.Show(this,0)
							onclick=getleftbar(this);><A href="#">订单管理</A>
							<DIV class=menu_childs onmouseout=Menus.Hide(0);>
								<UL>
									<LI><A href="OrderFormAction!listOrderForm.action"
										target=frmright>订单列表</A></LI>
								</UL>
							</DIV>
							<DIV class=menu_div>
								<IMG style="VERTICAL-ALIGN: bottom"
									src="images/menu01_right.gif">
							</DIV></LI>
						<LI id=menu_3 onmouseover=Menus.Show(this,0)
							onclick=getleftbar(this);><A href="#">用户管理</A>
							<DIV class=menu_childs onmouseout=Menus.Hide(0);>
								<UL>
									<LI><A href="UserAction!listUser.action" target=frmright>用户列表</A>
									</LI>
									<LI><A href="include/user/userQuery.jsp" target=frmright>用户查询</A>
									</LI>
								</UL>
							</DIV>


							<DIV class=menu_div>
								<IMG style="VERTICAL-ALIGN: bottom"
									src="images/menu01_right.gif">
							</DIV></LI>
						<LI id=menu_4 onmouseover=Menus.Show(this,0)
							onclick=getleftbar(this);><A href="#">系统管理</A>
							<DIV class=menu_childs onmouseout=Menus.Hide(0);>
								<UL>
									<LI><A href="include/admin/amend.jsp" target=frmright>修改登录密码</A>
									</LI>
								</UL>
							</DIV>
							<DIV class=menu_div>
								<IMG style="VERTICAL-ALIGN: bottom"
									src="images/menu01_right.gif">
							</DIV></LI>
					</UL>
				</DIV>
			</DIV>
		</DIV>
		<DIV style="BACKGROUND: #337abb; WIDTH: 80%;margin:1px auto; HEIGHT: 24px"></DIV>
		<!--导航部分结束-->
