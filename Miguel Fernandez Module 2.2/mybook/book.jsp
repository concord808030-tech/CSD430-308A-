<%-- book.jsp - Displays a list of books  --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%
// Miguel Fernandez 6/14/26
    // Scriptlet: Java code
    String[][] books = {
        {"Minecraft 1", "Case", "2005"},
        {"Minecraft 2", "Case", "2006"},
        {"Minecraft 3", "Case", "2007"},
        {"Minecraft 4", "Case", "2008"},
        {"Minecraft 5", "Case", "2009"}
    };
%>

<!DOCTYPE html>
<html>
<head>
    <title>Favorite Books</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <h1>My Favorite Books</h1>
    <p>This page lists five books</p>

    <table>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Year Published</th>
        </tr>

        <%
            // Scriptlet: loop
            for (int i = 0; i < books.length; i++) {
        %>
                <tr>
                    <td><%= books[i][0] %></td>
                    <td><%= books[i][1] %></td>
                    <td><%= books[i][2] %></td>
                </tr>
        <%
            }
        %>
    </table>

</body>
</html>