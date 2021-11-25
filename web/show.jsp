<%--
  Created by IntelliJ IDEA.
  User: Faiza Satti
  Date: 25/11/2021
  Time: 10:13 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="db.DbConnection" %>
<%@ page import="java.sql.ResultSet" %>

<html>
<head>
    <title>Lab 6</title>
    <style>
        table, th, td {
            border: 1px solid black;
        }

        th, td {
            padding: 10px;
        }
    </style>
</head>
<%--    <%!--%>
<%--      int count = 0;--%>
<%--    %>--%>
<body>
<%--    Page Count is <% out.println(++count); %>--%>
<%!
    DbConnection db=new DbConnection();

%>
<%
    String username=request.getParameter("name");
    String father=request.getParameter("father");
    String reg=request.getParameter("reg");
    db.insertRecord(username,father,reg);
//    out.println("data inserted");
%>

<%--<h1>Student Name : <%=username%></h1>--%>
<%--<p><b>Student Father Name : <%=father%></b></p>--%>
<%--<p>Student Reg No : <%=reg%></p>--%>

<%
    ResultSet rs=db.getRecords();

%>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Father Name</th>
        <th>Registration Number</th>
    </tr>
    <%
        while (rs.next()) {

    %>
    <tr>
        <td><%= rs.getInt("id") %></td>
        <td><%= rs.getString("username") %></td>
        <td><%= rs.getString("fathername") %></td>
        <td><%= rs.getString("regno") %></td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
