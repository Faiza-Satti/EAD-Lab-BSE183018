<%--
  Created by IntelliJ IDEA.
  User: Faiza Satti
  Date: 25/11/2021
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%--Create a simple calculator using jsp pages.
 Create a simple form with 1 dropdown select & 2 input fields
 User select addition/subtraction/multiplication/division from dropdown.
 User enter 2 values in number fields.
 Develop simple logic to check what user select. For example: if user select addition then
add these two numbers and show result. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="css/font.css" rel="stylesheet">
  <%--  <link href="css/style.css" rel="stylesheet">--%>
  <script src="css/jquery.js"></script>
  <title>Assignment 2</title>

  <style>

    @import url('https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@700&display=swap');

    :root{
      --rSection:#F8F9F9;
      --lSection:#E5E8E8;
      --font:'Roboto Condensed', sans-serif;
      --heightSections: 1000px;
    }

    body{
      background-color: rgb(207, 192, 177);
      /* font-family: 'Montserrat', sans-serif; */
      font-family: var(--font);
      font-size: 1rem;
      line-height: 20px;
      zoom:90%;
    }

    .mainContainer{
      padding:100px 80px;
      background-color: rgb(207, 192, 177);
      height: 700px;
    }

    .section_left{
      font-family: var(--font);
      color:black;
      /*height: var(--heightSections);*/
      height: 700px;
      background-image: url(images/bg.jpg);
      /*background-color: #ecedee;*/
      background-size: cover;
      float:left;
      width:34%; /*change it to 35 to close gap btw sections*/
      -webkit-box-shadow: 2px 7px 13px 0px #000000;
      box-shadow: 2px 7px 13px 0px #474040;

    }

    label{
      margin-bottom: 5px;
      margin-top: 2px;
    }

    .section_left button{
      margin-top: 120px;
      font-weight: bold;
      font-family: var(--font);
    }

    .section_right{
      background-color: var(--rSection);
      font-family: var(--font);
      color:black;
      /*height: var(--heightSections);*/
      height: 700px;
      float:right;
      width:66%;
      -webkit-box-shadow: 2px 7px 13px 0px #000000;
      box-shadow: 2px 7px 13px 0px #474040;
      padding-left: 50px;
      padding-right: 120px;

    }

    hr.One{
      border-top: 2px solid black;

    }

    #inputContainer{
      margin-top: 40px;
    }


    #loginContainer{
      margin-top: 40px;
    }

    .input-group{
      width: 400px;
    }
  </style>
</head>
<body>
<div class="mainContainer">

  <!--left section-->

  <div class="section_left text-center">
    <button type="button" class="btn btn-secondary">Register</button>
  </div>




  <!-- here goes main demanded section-->
  <!-- right section -->


  <div class="section_right">
    <h2 id="MainScreenHeading" style="margin-top: 100px;">Do Your Calculation Here</h2>
    <hr class="One">

    <div id="inputContainer">

      <form method="post" action="show.jsp">

        <select name="operations" id="operations" class="form-control">
          <option value="add">Addition</option>
          <option value="subtract">Subtraction</option>
          <option value="multiply">Multiplication</option>
          <option value="divide">Division</option>
        </select>

        <label>Enter First Number</label>
        <input type="text" name="first" id="first" class="form-control">

        <label>Enter Second Number</label>
        <input type="text" name="second" id="second" class="form-control">

        <div id="message" style="margin-bottom: 20px;"></div>

        <!-- submit button -->
        <div class="text-center">
          <button value="submit" class="btn btn-primary">Calculate</button>
        </div>
      </form>

    </div>
  </div>

</div>
</body>
</html>