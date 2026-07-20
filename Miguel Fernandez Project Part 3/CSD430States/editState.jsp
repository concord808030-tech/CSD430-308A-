<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="statesBean" class="beans.MiguelStatesBean" scope="request" />

<%
    int selectedId = Integer.parseInt(request.getParameter("stateId"));
    boolean recordFound = statesBean.findByKey(selectedId);
%>

<!DOCTYPE html>
<html>
<head>
    <title>CSD430 - Edit State Record</title>
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
        .field-row {
            margin-bottom: 14px;
        }
        label {
            display: inline-block;
            width: 140px;
            font-weight: bold;
        }
        input[type="text"], input[type="number"] {
            padding: 6px 10px;
            font-size: 14px;
            border-radius: 4px;
            border: 1px solid #b8c0c8;
            width: 250px;
        }
        input[readonly] {
            background-color: #e9ecef;
            color: #555;
        }
        input[type="submit"] {
            margin-top: 10px;
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

    <h1>Edit State Record</h1>

    <%
        if (recordFound) {
    %>

    <div class="card">
        <p>
            The <strong>State ID</strong> field below is the table's key
            field and cannot be changed. Update any of the other fields
            and click Save Changes to apply the update.
        </p>

        <form action="updateState.jsp" method="post">

            <div class="field-row">
                <label for="stateId">State ID:</label>
                <input type="text" id="stateId" name="stateId"
                       value="<%= statesBean.getStateId() %>" readonly="readonly" />
            </div>

            <div class="field-row">
                <label for="stateName">State Name:</label>
                <input type="text" id="stateName" name="stateName"
                       value="<%= statesBean.getStateName() %>" />
            </div>

            <div class="field-row">
                <label for="capital">Capital:</label>
                <input type="text" id="capital" name="capital"
                       value="<%= statesBean.getCapital() %>" />
            </div>

            <div class="field-row">
                <label for="population">Population:</label>
                <input type="number" id="population" name="population"
                       value="<%= statesBean.getPopulation() %>" />
            </div>

            <div class="field-row">
                <label for="region">Region:</label>
                <input type="text" id="region" name="region"
                       value="<%= statesBean.getRegion() %>" />
            </div>

            <div class="field-row">
                <label for="yearAdmitted">Year Admitted:</label>
                <input type="number" id="yearAdmitted" name="yearAdmitted"
                       value="<%= statesBean.getYearAdmitted() %>" />
            </div>

            <input type="submit" value="Save Changes" />
        </form>
    </div>

    <%
        } else {
    %>

    <p>No record was found for the selected state.</p>

    <%
        }
    %>

    <p><a href="selectUpdateState.jsp">Back to state selection</a></p>

</body>
</html>