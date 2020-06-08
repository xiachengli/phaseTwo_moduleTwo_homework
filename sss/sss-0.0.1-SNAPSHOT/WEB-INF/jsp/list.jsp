<%@ page import="com.xcl.pojo.Resume" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>简历列表</title>

</head>
<body>
<h2>我是服务器：${pageContext.request.localPort}</h2>
<h2>当前sessionId：${pageContext.session.id}</h2>
<%
    List<Resume> list = (List<Resume>) request.getAttribute("list");
%>
<div style="float: none">
    <span style="float: right"><a href="toInsert">新增</a></span>
    <table border="1" cellspacing="0" align="center" width="100%"
           height="500dp">
        <thead>
        <tr>
            <td>
                编号
            </td>
            <td>
                姓名
            </td>
            <td>
                地址
            </td>
            <td>
                联系电话
            </td>
            <td>
                操作
            </td>
        </tr>
        </thead>
        <tbody>
        <tr>

            <%
                for (Resume resume : list) {
            %>
            <td><%=resume.getId()%>
            </td>
            <td><%=resume.getName()%>
            </td>
            <td><%=resume.getAddress()%>
            </td>
            <td><%=resume.getPhone()%>
            </td>
            <td>
                <a href="toUpdate?id=<%=resume.getId()%>">编辑</a>
                <a href="/resume/delete?id=<%=resume.getId() %>">删除</a>
            </td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>

