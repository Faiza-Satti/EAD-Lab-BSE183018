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
    String operation=request.getParameter("operations");
    String firstNumber=request.getParameter("first");
    int firstNo=Integer.parseInt(firstNumber);
    String secondNumber=request.getParameter("second");
    int secondNo=Integer.parseInt(secondNumber);
    int resultNumber=0;
    if(operation=="add"){
        resultNumber=firstNo+secondNo;
    }
    else if(operation=="subtract"){
        resultNumber=firstNo-secondNo;
    }
    else if(operation=="divide"){
        resultNumber=firstNo/secondNo;
    }
    else if(operation=="multiply"){
        resultNumber=firstNo*secondNo;
    }

    //db.insertRecord(username,father,reg);
//    out.println("data inserted");
%>

<h1>First Number : <%=firstNumber%></h1>
<p>Second Number : <%=secondNumber%></p>
<p>Operation : <%=operation%></p>
<p>Resulting Number : <%=resultNumber%></p>




</body>
</html>
