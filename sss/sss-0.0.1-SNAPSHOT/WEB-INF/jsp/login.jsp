<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>用户登录</title>
    <style>
        .txtBox {
            padding: 3px;
            width: 250px;
            font-size: 16px;
        }
    </style>
</head>
<body>
<h2>我是服务器：${pageContext.request.localPort}</h2>
<h2>当前sessionId：${pageContext.session.id}</h2>
<div align="center">
    <form name="form1" method="post" action="login">
        <table>
            <caption>用户登录</caption>
            <tr>
                <th>账号：</th>
                <td>
                    <input type="text" name="username" class="txtBox"/>
                </td>
            </tr>
            <tr>
                <th>密码：</th>
                <td>
                    <input type="password" name="password" class="txtBox"/>
                </td>
            </tr>
            <!-- 以下是提交 -->
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="登录"/>
                </td>
            </tr>
        </table>
        <!-- 显示错误信息 -->
        <span style="color:red"><%=request.getAttribute("msg") == null ? "" : request.getAttribute("msg")%></span>
    </form>
</div>
</body>
</html>
