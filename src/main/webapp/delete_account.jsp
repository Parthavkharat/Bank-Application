<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String accountNumber = request.getParameter("account_number");
    Connection con = null;
    PreparedStatement pstmt = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?useSSL=false&autoReconnect=true", "root", "SPAVAGCE");
        String query = "DELETE FROM users WHERE account_number=?";
        pstmt = con.prepareStatement(query);
        pstmt.setString(1, accountNumber);
        int rowsAffected = pstmt.executeUpdate();
        if (rowsAffected > 0) {
            out.println("<div class=\"container\">");
            out.println("<h2>Delete Account</h2>");
            out.println("<p>Your account with number " + accountNumber + " has been successfully deleted.</p>");
            out.println("</div>");
        } else {
            out.println("<div class=\"container\">");
            out.println("<h2>Delete Account</h2>");
            out.println("<p>Account deletion failed. Please check the account number.</p>");
            out.println("</div>");
        }
    } catch (Exception e) {
        
    } 
    
%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Account</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
</body>
</html>
