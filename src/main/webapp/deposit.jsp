<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String accountNumber = request.getParameter("account_number");
   
%>
<!DOCTYPE html>
<html>
<head>
    <title>Deposit Money</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Deposit Money</h2>
        <form action="process_deposit.jsp" method="post">
            <input type="hidden" name="account_number" value="<%= accountNumber %>">
            <label for="amount">Enter amount to deposit:</label>
            <input type="number" id="amount" name="amount" required><br><br>
            <input type="submit" value="Deposit">
        </form>
    </div>
</body>
</html>
