<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="statesBean" class="beans.MiguelStatesBean" scope="request" />



<!DOCTYPE html>
<html>
<head>
    <title>CSD430 - State Record</title>
</head>
<body>

    <h1>State Record Detail</h1>
    <p>
        This page displays the full record for the state selected on the
        previous page, pulled from the <strong>miguelstatesdata</strong>
        table using the MiguelStatesBean. Each field is displayed in its
        own table column, with field titles shown in the header row.
    </p>

    <%
        if (recordFound) {
    %>

    <table border="1" cellpadding="6" cellspacing="0">
        <thead>
            <tr>
                <th>State ID</th>
                <th>State Name</th>
                <th>Capital</th>
                <th>Population</th>
                <th>Region</th>
                <th>Year Admitted</th>
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

    <p>No record was found for the selected state.</p>

    <%
        }
    %>

    <p><a href="selectState.jsp">Back to state selection</a></p>

</body>
</html>
