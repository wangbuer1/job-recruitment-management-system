﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%
        HashMap user = Info.getUser(request);
        String uname = user.get("uname").toString();
        String utype = user.get("utype").toString();
        String userid = user.get("id").toString();
    %>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <style type="text/css">
        <!--

        .mytab {
            font-size: 12px;
            width: 100%;
            line-height: 150%;
            text-decoration: none;
            word-wrap: break-word;
            border: #DBE6E3 solid 1px;
            border-bottom: 0;
            border-right: 0;
            border-left: #DBE6E3 solid 1px;
            line-height: 175%;
            margin: 1px 1px;
            margin-left: 0px;
        }

        .mytab td {
            padding: 2px 5px;
            border: #DBE6E3 solid 1px;
            border-left: 0;
            border-top: 0;
        }

        body {
            margin-left: 3px;
            margin-top: 0px;
            margin-right: 3px;
            margin-bottom: 0px;
        }

        .STYLE1 {
            color: #e1e2e3;
            font-size: 12px;
        }

        .STYLE6 {
            color: #000000;
            font-size: 12;
        }

        .STYLE10 {
            color: #000000;
            font-size: 12px;
        }

        .STYLE19 {
            color: #344b50;
            font-size: 12px;
        }

        .STYLE21 {
            font-size: 12px;
            color: #3b6375;
        }

        .STYLE22 {
            font-size: 12px;
            color: #295568;
        }

        -->
    </style>
    <script type="text/javascript" src="/invitemsg/js/popup.js"></script>
    <script>
        var highlightcolor = '#d5f4fe';
        //此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
        var clickcolor = '#51b2f6';

        function changeto() {
            source = event.srcElement;
            if (source.tagName == "TR" || source.tagName == "TABLE")
                return;
            while (source.tagName != "TD")
                source = source.parentElement;
            source = source.parentElement;
            cs = source.children;
//alert(cs.length);
            if (cs[0].style.backgroundColor != highlightcolor && source.id != "nc" && cs[0].style.backgroundColor != clickcolor)
                for (i = 0; i < cs.length; i++) {
                    cs[i].style.backgroundColor = highlightcolor;
                }
        }

        function changeback() {
            if (event.fromElement.contains(event.toElement) || source.contains(event.toElement) || source.id == "nc")
                return
            if (event.toElement != source && cs[0].style.backgroundColor != clickcolor)
//source.style.backgroundColor=originalcolor
                for (i = 0; i < cs.length; i++) {
                    cs[i].style.backgroundColor = "";
                }
        }

        function clickto() {
            source = event.srcElement;
            if (source.tagName == "TR" || source.tagName == "TABLE")
                return;
            while (source.tagName != "TD")
                source = source.parentElement;
            source = source.parentElement;
            cs = source.children;
//alert(cs.length);
            if (cs[0].style.backgroundColor != clickcolor && source.id != "nc")
                for (i = 0; i < cs.length; i++) {
                    cs[i].style.backgroundColor = clickcolor;
                }
            else
                for (i = 0; i < cs.length; i++) {
                    cs[i].style.backgroundColor = "";
                }
        }
    </script>

</head>

<%
    HashMap ext = new HashMap();
    String tglparentid = request.getParameter("tglparentid") == null ? "" : request.getParameter("tglparentid");
    ext.put("tglparentid", tglparentid);
    new CommDAO().insert(request, response, "yqlj", ext, true, false);
%>
<body>
<!-- servletformstart
  <form  action="/invitemsg/invitemsg?ac=yqljtj&tglparentid=<%=tglparentid%>"     name="f1" method="post"  onsubmit="return checkform()" >
   servletformend -->
<!-- s2formstart -->
<form name="f1" method="post" onsubmit="return checkform()"
      action="/invitemsg/invitemsg!yqljtj.action?tglparentid=<%=tglparentid%>">
    <!--  s2formend -->
    <table width="99.7%" border="0" align="center" cellpadding="0" cellspacing="0">

        <tr>
            <td height="30">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="24" bgcolor="#353c44">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="3%" height="19" valign="bottom">&nbsp;</td>
                                                <td width="97%" valign="bottom"><span
                                                        class="STYLE1"> 信息添加&nbsp;&nbsp;</span></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>


                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>


        <tr>
            <td>
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#a8c7ce" class="mytab"
                       onMouseOver="changeto()" onmouseout="changeback()">
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">链接名称</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text onblur='checkform()' class='' id='ljname' name='ljname' size=35/><label
                                id='clabelljname'/></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">链接地址</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text onblur='checkform()' class='' id='ljurl' name='ljurl' size=35/><label
                                id='clabelljurl'/></td>
                    </tr>

                    <tr>
                        <td height="30" colspan="2" align="center" bgcolor="#FFFFFF" class=""><label>
                            <input type="button" onclick="if(checkform()){f1.submit();}" name="Submit" value="提交信息"/>
                            &nbsp;&nbsp;&nbsp;
                            <input type=button value='返回上页' onclick='window.location.replace("yqljcx.jsp")'/>
                        </label></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
<script type="text/javascript">
    <%
    if(session.getAttribute("suc")!=null)
    {
    session.removeAttribute("suc");
    %>
    alert("操作成功");
    <%}
    %>
</script>
<script language=javascript src='/invitemsg/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/invitemsg/js/popup.js'></script>
<script language=javascript src='/invitemsg/js/ajax.js'></script>
<%@page import="util.Info" %>
<%@page import="util.Info" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>
<%@page import="util.PageManager" %>
<%@page import="dao.CommDAO" %>
<script language=javascript>

    function checkform() {
        var ljnameobj = document.getElementById("ljname");
        if (ljnameobj.value == "") {
            document.getElementById("clabelljname").innerHTML = "&nbsp;&nbsp;<font color=red>请输入链接名称</font>";
            return false;
        } else {
            document.getElementById("clabelljname").innerHTML = "  ";
        }

        var ljurlobj = document.getElementById("ljurl");
        if (ljurlobj.value == "") {
            document.getElementById("clabelljurl").innerHTML = "&nbsp;&nbsp;<font color=red>请输入链接地址</font>";
            return false;
        } else {
            document.getElementById("clabelljurl").innerHTML = "  ";
        }

        return true;
    }
</script>  
