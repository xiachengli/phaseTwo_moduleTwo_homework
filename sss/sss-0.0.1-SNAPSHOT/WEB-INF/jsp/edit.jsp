<%@ page import="com.xcl.pojo.Resume" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <%
    Resume resume = (Resume)request.getAttribute("resume");
%>
<h2>我是服务器：${pageContext.request.localPort}</h2>
<h2>当前sessionId：${pageContext.session.id}</h2>
<div style="float: none">
    <form action="/resume/insert" method="post">
        <table border="1" cellspacing="0" align="center" width="100%">
            <thead>
            <tr>
                <td>
                    <label>编号：</label>
                </td>
                <td>
                    <input type="text" readonly value="<%=resume.getId()%>" name="id">
                </td>
            </tr>
            <tr>
                <td>
                    <label> 姓名：</label>
                </td>
                <td>
                    <input type="text" value="<%=resume.getName()%>" name="name">
                </td>
            </tr>
            <tr>
                <td>
                    <label> 地址：</label>
                </td>
                <td>
                    <input type="text" value="<%=resume.getAddress()%>" name="address">
                </td>
            </tr>
            <tr>
                <td>
                    <label>联系电话：</label>
                </td>
                <td>
                    <input type="text" value="<%=resume.getPhone()%>" name="phone">
                </td>
            </tr>
            <!-- 以下是提交 -->
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="提交"/>
                </td>
            </tr>
            </thead>
        </table>
    </form>
</div>
<html>