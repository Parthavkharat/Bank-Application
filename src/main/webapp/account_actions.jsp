<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Account Actions</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h2 {
            color: #333;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 10px;
        }

        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            transition: color 0.3s ease;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Account Actions</h2>
        <ul>
            <li><a href="check_balance.jsp?account_number=<%= request.getParameter("account_number") %>">Check Balance</a></li>
            <li><a href="deposit.jsp?account_number=<%= request.getParameter("account_number") %>">Deposit Money</a></li>
            <li><a href="withdraw.jsp?account_number=<%= request.getParameter("account_number") %>">Withdraw Money</a></li>
            <li><a href="delete_account.jsp?account_number=<%= request.getParameter("account_number") %>">Delete Account</a></li>
        </ul>
    </div>
</body>
</html>
