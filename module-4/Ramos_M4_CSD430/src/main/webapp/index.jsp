<%--
    Stephanie Ramos
    January 31, 2026
    Module 4 Assignment: Java Bean
    
    Purpose: Use a JavaBean to hold data, then use JSP Scriptlets to read that data and display it in an HTML table.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.BookBean" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Module 4 Assignment: JavaBean</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>

<h1>My Top 5 Favorite Books</h1>

<p><strong>Description:</strong> This table displays my top 5 favorite books.</p>

<%

	// Scriptlet used to hold Java code
	// Creates JavaBean objects and stores them in a list
    ArrayList<BookBean> books = new ArrayList<BookBean>();

    books.add(new BookBean("Verity", "Colleen Hoover", "Psychological Thriller", "5/5", "Fast paced and hard to put down"));
    books.add(new BookBean("The Intruder", "Frieda McFadden", "Psychological Thriller", "4/5", "Plot twists throughout the story"));
    books.add(new BookBean("Alchemised", "SenLinYu", "Dark Fantasy", "4.75/5", "Dark tone with strong world building"));
    books.add(new BookBean("The Nightingale", "Kristin Hannah", "Historical Fiction", "4.75/5", "Emotional and memorable characters"));
    books.add(new BookBean("Lessons in Chemistry", "Bonnie Garmus", "Historical Fiction", "4.5/5", "Smart, funny, and meaningful"));
%>

<!-- HTML tabled used to display the data -->
<table>
    <tr>
        <th>Title</th>
        <th>Author</th>
        <th>Genre</th>
        <th>Rating</th>
        <th>Notes</th>
    </tr>

    <%
    	// Scriptlet used to loop through the JavaBean records
        for (int i = 0; i < books.size(); i++) {
            BookBean b = books.get(i);
    %>
        <tr>
            <td><%= b.getTitle() %></td>
            <td><%= b.getAuthor() %></td>
            <td><%= b.getGenre() %></td>
            <td><%= b.getRating() %></td>
            <td><%= b.getNotes() %></td>
        </tr>
    <%
        }
    %>
</table>

<div class="info">
    <p><strong>Field Descriptions:</strong></p>
    <ul>
        <li><strong>Title:</strong> The name of the book.</li>
        <li><strong>Author:</strong> The person who wrote the book.</li>
        <li><strong>Genre:</strong> The category the book belongs to.</li>
        <li><strong>Rating:</strong> My personal rating of the book.</li>
        <li><strong>Notes:</strong> A short reason why it is one of my favorites.</li>
    </ul>

    <p><strong>Record Description:</strong> Each record represents one book from my top 5 favorites list.</p>
</div>

</body>
</html>
