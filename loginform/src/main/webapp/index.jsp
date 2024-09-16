<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="LightPink">
    <h2>Login</h2>
    <form action="FirstServlet" method="post">
        <label> Username</label><br><br>
        <input type="text" name="username" placeholder="Enter your Name"><br><br>
        <label>Password</label><br><br>
        <input type="password" name="password" placeholder="Enter password"><br><br>
        <pre><input type="submit" value="Login">      <input type="reset" value="Clear"></pre>
    </form>

    <p style="color:red;">
        <% 
           String errorMessage = (String) request.getAttribute("errorMessage");
           if (errorMessage != null) {
               out.println(errorMessage);
           }
        %>
    </p>
</body>
</html>