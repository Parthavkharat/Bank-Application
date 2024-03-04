<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Welcome to Your Dashboard</h2>
        <p>Please enter your account number:</p>
        <form action="account_actions.jsp" method="post">
            <input type="text" name="account_number" required><br><br>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
