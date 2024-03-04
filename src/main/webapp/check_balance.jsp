<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String accountNumber = request.getParameter("account_number");
    double balance = 0.0;
    Connection con = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?useSSL=false&autoReconnect=true", "root", "SPAVAGCE");
        String query = "SELECT balance FROM users WHERE account_number=?";
        pstmt = con.prepareStatement(query);
        pstmt.setString(1, accountNumber);
        rs = pstmt.executeQuery();
        if (rs.next()) {
            balance = rs.getDouble("balance");
        }
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Check Balance</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <div class="container">
        <h2>Account Balance</h2>
        <p>Your current balance is: <%= balance %></p>
    </div>
</body>
</html>
