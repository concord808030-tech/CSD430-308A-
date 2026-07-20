<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList" %>
<jsp:useBean id="statesBean" class="beans.MiguelStatesBean" scope="request" />

<%
    ArrayList<String[]> stateKeys = statesBean.getAllKeys();
%>

<!DOCTYPE html>
<html>
<head>
    <title>CSD430 - Update a State Record</title>
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
            padding: 25px 30px;
            max-width: 550px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
        }
        label {
            font-weight: bold;
            margin-right: 10px;
        }
        select {
            padding: 6px 10px;
            font-size: 14px;
            border-radius: 4px;
            border: 1px solid #b8c0c8;
        }
        input[type="submit"] {
            margin-top: 20px;
            background-color: #2c7be5;
            color: #ffffff;
            border: none;
            padding: 8px 20px;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #1a5fc4;
        }
    </style>
</head>
<body>

    <h1>Update a State Record</h1>

    <div class="card">
        <p>
            Select a state below to load its record into an editable form.
            The <strong>State ID</strong> key field cannot be changed, but
            every other field can be updated.
        </p>

        <form action="editState.jsp" method="post">
            <label for="stateId">Select a State:</label>
            <select name="stateId" id="stateId">
                <%
                    for (String[] row : stateKeys) {
                %>
                <option value="<%= row[0] %>"><%= row[1] %></option>
                <%
                    }
                %>
            </select>
            <br />
            <input type="submit" value="Load Record" />
        </form>
    </div>

</body>
</html>
