<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    String fullname = request.getParameter("fullname");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String contact = request.getParameter("contact");
    String address = request.getParameter("address");
    int deposit = Integer.parseInt(request.getParameter("deposit"));
    Connection con = null;
    PreparedStatement pstmt = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?useSSL=false&autoReconnect=true", "root", "SPAVAGCE");     
        String accountNumber = generateAccountNumber();
        String query = "INSERT INTO users (fullname, username, password, contact, address, balance, account_number) VALUES (?, ?, ?, ?, ?, ?, ?)";
        pstmt = con.prepareStatement(query);
        pstmt.setString(1, fullname);
        pstmt.setString(2, username);
        pstmt.setString(3, password);
        pstmt.setString(4, contact);
        pstmt.setString(5, address);
        pstmt.setInt(6, deposit);
        pstmt.setString(7, accountNumber);
        pstmt.executeUpdate();
        out.println("Account created successfully. Your account number is: " + accountNumber);
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

<%!
    
    private String generateAccountNumber() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 12; i++) {
            sb.append((int)(Math.random() * 10));
        }
        return sb.toString();
    }
%>
