<%--
  Created by IntelliJ IDEA.
  User: osmanidris
  Date: 1/11/17
  Time: 9:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>

      $(document).ready(function(){
          $(".myLink").click(function(event){
              event.preventDefault();
              var content = $(this).html().split(' ');
              var pageID = content[1] ;
              if(pageID!='Page'){
                  $.post( "http://localhost:8080/page"+pageID+".jsp", function( data ) {
                      $( "#MainDiv" ).html( data );
                  });
              }
          });
      });

  </script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }

    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}

    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }

    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }

    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;}
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"><img src="imgs/TIY.png" style="width:40px;height:40px"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>
        <li><a href="#">About</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#" class="myLink">Page 1</a></p>
      <p><a href="#" class="myLink">Page 2</a></p>
      <p><a href="#" class="myLink">Page 3</a></p>
      <p><a href="#" class="myLink">Page 4</a></p>
      <p><a href="#" class="myLink">Page 5</a></p>
      <p><a href="#" class="myLink">Page 6</a></p>
      <p><a href="#" class="myLink">Page 7</a></p>
      <p><a href="#" class="myLink">Page 8</a></p>
      <p><a href="#" class="myLink">Page 9</a></p>
      <p><a href="#" class="myLink">Page 10</a></p>
    </div>
    <div id="MainDiv" class="col-sm-10 text-left">
      <h1>Welcome</h1>
      <h1>This is the home page</h1>
      <hr>
      <h3>The Iron Yard</h3>
      <p>this is topically Java Course</p>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>All right reserved @2017</p>
</footer>

</body>
</html>
