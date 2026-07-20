<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="statesBean" class="beans.MiguelStatesBean" scope="request" />

<%
    int stateId = Integer.parseInt(request.getParameter("stateId"));
    String stateName = request.getParameter("stateName");
    String capital = request.getParameter("capital");
    int population = Integer.parseInt(request.getParameter("population"));
    String region = request.getParameter("region");
    int yearAdmitted = Integer.parseInt(request.getParameter("yearAdmitted"));

    boolean updateSuccess = statesBean.updateRecord(
            stateId, stateName, capital, population, region, yearAdmitted);
%>

<!DOCTYPE html>
<html>
<head>
    <title>CSD430 - Updated State Record</title>
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
            max-width: 700px;
            box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 15px;
        }
        th, td {
            border: 1px solid #d9dee3;
            padding: 8px 12px;
            text-align: left;
        }
        thead tr.field-names {
            background-color: #2c3e50;
            color: #ffffff;
        }
        thead tr.field-types {
            background-color: #eef1f4;
            color: #555;
            font-style: italic;
            font-size: 12px;
        }
        .success-message {
            color: #1e7e34;
            font-weight: bold;
        }
        .error-message {
            color: #b02a37;
            font-weight: bold;
        }
        a {
            color: #2c7be5;
        }
    </style>
</head>
<body>

    <h1>Updated State Record</h1>

    <div class="card">
        <%
            if (updateSuccess) {
        %>
        <p class="success-message">The record was updated successfully.</p>

        <table>
            <thead>
                <tr class="field-names">
                    <th>State ID</th>
                    <th>State Name</th>
                    <th>Capital</th>
                    <th>Population</th>
                    <th>Region</th>
                    <th>Year Admitted</th>
                </tr>
                <tr class="field-types">
                    <th>INT (key)</th>
                    <th>VARCHAR</th>
                    <th>VARCHAR</th>
                    <th>INT</th>
                    <th>VARCHAR</th>
                    <th>INT</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= statesBean.getStateId() %></td>
                    <td><%= statesBean.getStateName() %></td>
                    <td><%= statesBean.getCapital() %></td>
                    <td><%= statesBean.getPopulation() %></td>
                    <td><%= statesBean.getRegion() %></td>
                    <td><%= statesBean.getYearAdmitted() %></td>
                </tr>
            </tbody>
        </table>

        <%
            } else {
        %>

        <p class="error-message">The update could not be completed. Please try again.</p>

        <%
            }
        %>

        <p><a href="selectUpdateState.jsp">Update another record</a></p>
        <p><a href="index.jsp">Back to project index</a></p>
    </div>

</body>
</html>

