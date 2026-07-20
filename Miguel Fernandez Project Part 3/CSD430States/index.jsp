<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>CSD430 - Project Index</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f4f6f8;
            color: #222;
            margin: 40px;
        }
        h1 {
            color: #2c3e50;
        }
        .card {
            background-color: #ffffff;
            border: 1px solid #d9dee3;
            border-radius: 8px;
            padding: 20px 30px;
            max-width: 550px;
            margin-bottom: 20px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
        }
        h2 {
            color: #2c3e50;
            margin-top: 0;
        }
        ul {
            padding-left: 20px;
        }
        a {
            color: #2c7be5;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>CSD430 Project Modules</h1>

    <div class="card">
        <h2>States Module - Database Setup (PHP)</h2>
        <ul>
            <li><a href="http://localhost/csd430/miguelcreateTable.php">Create Table</a></li>
            <li><a href="http://localhost/csd430/miguelpopulateTable.php">Populate Table</a></li>
            <li><a href="http://localhost/csd430/miguelDropTable.php">Drop Table</a></li>
        </ul>
    </div>

    <div class="card">
        <h2>States Module - JavaBean Lookup (JSP)</h2>
        <ul>
            <li><a href="selectState.jsp">Select and View a State Record</a></li>
        </ul>
    </div>

    <div class="card">
        <h2>States Module - JavaBean Update (JSP)</h2>
        <ul>
            <li><a href="selectUpdateState.jsp">Select and Update a State Record</a></li>
        </ul>
    </div>

    <!-- Additional module links will be added here as the course progresses -->

</body>
</html>
