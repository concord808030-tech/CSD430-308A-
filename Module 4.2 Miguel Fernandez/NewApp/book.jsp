<%-- book.jsp - Builds Book JavaBeans and displays them in a table --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="beans.Book" %>

<%
    // Miguel Fernandez 6/28/26
    // Scriptlet: create an array of Book JavaBeans to hold the data
    Book[] books = {
        new Book("Minecraft 1", "Case", "2005", "Adventure", 312),
        new Book("Minecraft 2", "Case", "2006", "Adventure", 280),
        new Book("Minecraft 3", "Case", "2007", "Fantasy", 354),
        new Book("Minecraft 4", "Case", "2008", "Fantasy", 401),
        new Book("Minecraft 5", "Case", "2009", "Adventure", 298)
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

    <%-- Overall data description --%>
    <p>This table lists five of my favorite books.</p>

    <table>
        <%-- Field/column descriptions --%>
        <tr>
            <th>Title</th>
            <th>Author</th>
            <th>Year Published</th>
            <th>Genre</th>
            <th>Pages</th>
        </tr>

        <%
            // Scriptlet: loop through each Book bean
            for (int i = 0; i < books.length; i++) {
                Book b = books[i];
        %>
                <tr>
                    <%-- Pull each value from the JavaBean using its getters --%>
                    <td><%= b.getTitle() %></td>
                    <td><%= b.getAuthor() %></td>
                    <td><%= b.getYear() %></td>
                    <td><%= b.getGenre() %></td>
                    <td><%= b.getPages() %></td>
                </tr>
        <%
            }
        %>
    </table>

</body>
</html>