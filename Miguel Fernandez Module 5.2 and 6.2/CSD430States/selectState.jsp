<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.ArrayList" %>
<jsp:useBean id="statesBean" class="beans.MiguelStatesBean" scope="request" />

<%--
    selectState.jsp
    CSD430 - States Module

    This page displays an HTML dropdown menu listing every state_id and
    state_name

    Java code is held inside scriptlets only.
--%>

<%
    // Scriptlet: retrieve the list of state_id/state_name pairs from the bean
    ArrayList<String[]> stateKeys = statesBean.getAllKeys();
%>

<!DOCTYPE html>
<html>
<head>
    <title>CSD430 - Select a State</title>
</head>
<body>

    <h1>States Database Lookup</h1>
    <p>
        This form lists every state currently stored in the
        <strong>miguelstatesdata</strong> table. Select a state from the
        dropdown menu below and click Submit to view its full record,
        including capital, population, region, and year admitted to the
        Union.
    </p>

    <form action="displayState.jsp" method="post">
        <label for="stateId">Select a State:</label>
        <select name="stateId" id="stateId">
            <%
                // Scriptlet: loop over the key list and build one option per state
                for (String[] row : stateKeys) {
            %>
            <option value="<%= row[0] %>"><%= row[1] %></option>
            <%
                }
            %>
        </select>
        <input type="submit" value="Submit" />
    </form>

</body>
</html>
