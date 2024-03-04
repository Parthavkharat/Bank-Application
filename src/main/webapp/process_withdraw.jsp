<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String accountNumber = request.getParameter("account_number");
    double amount = Double.parseDouble(request.getParameter("amount"));
    Connection con = null;
    PreparedStatement pstmt = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?useSSL=false&autoReconnect=true", "root", "SPAVAGCE");
        String updateQuery = "UPDATE users SET balance = balance - ? WHERE account_number = ?";
        pstmt = con.prepareStatement(updateQuery);
        pstmt.setDouble(1, amount);
        pstmt.setString(2, accountNumber);
        pstmt.executeUpdate();
        response.sendRedirect("check_balance.jsp?account_number=" + accountNumber);
    } catch (Exception e) {
        out.println("An error occurred: " + e.getMessage());
    } finally {
        try {
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
