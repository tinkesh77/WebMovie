<%@ page import="java.util.List" %>
<%@ page import="org.movie.entity.Movie" %>
<%@ page import="org.movie.dao.Operations" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="HTML, CSS, JavaScript">
    <meta name="author" content="tinkesh">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="index.css">
    <title>MovieMagic</title>
</head>
<body>


<%
    List<Movie> list = Operations.fetch();

%>


<nav class="navbar navbar-expand-lg " style="background: orange">
    <div class="container">
        <!-- Logo on the left -->
        <a class="navbar-brand" href="#" >
            <img src="" alt="Your Logo">
        </a>
        <!-- Center-aligned search bar -->
        <form class="form-inline my-2 my-lg-0 mx-auto">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
        <!-- Links on the right -->
        <div class="navbar-nav ml-auto">
            <a class="nav-item nav-link" href="#">About Us</a>
            <a class="nav-item nav-link" href="#">Help</a>
        </div>
    </div>
</nav>


<div class="container">

    <div class="row">
        <div class="col-2">
            <div class = "boxHeader">Home</div>
        </div>
        <div class="col-2">
            <div class = "boxHeader">Movies</div>

        </div>
        <div class="col-2">
            <div class = "boxHeader">Bollywood</div>

        </div>
        <div class="col-2">
            <div class = "boxHeader">Hollywood</div>

        </div>

        <div class="col-2">
            <div class = "boxHeader">Genra</div>

        </div>
        <div class="col-2">
            <div class = "boxHeader">Web Series</div>

        </div>



    </div>

</div>


<%

    if(list != null) {

%>



<div class="container footer-page">
    <div class="row">
        <%
            for(int i = 0; i < list.size(); i++) {
                Movie mov = list.get(i);
                String image = mov.getMoveImage();
        %>

        <div class="col-md-3">
            <div class="card card-wid">
                <img src="images/<%= image%>" alt="<%= mov.getMovieName() %>"  class="" width="200" >
                <p><a class="movielinke" href="jsaPages/movieLink.jsp?move_id=<%= mov.getMovieId()%>"><span class="bold-text"><%= mov.getMovieName() %></span></a></p>
                <p><%= mov.getMovieTags() %></p>
            </div>
        </div>

        <%
            }
        %>
    </div>
</div>


<%
    }
%>

<%
    if(list == null){

%>
<div class="alert alert-success" role="alert">
    <h4 class="alert-heading">No Movie Found</h4>
    <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
    <hr>
    <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
</div>

<% } %>

<div class="container para-00">
    <p class = para>

        At MovieMagic, we are dedicated to bringing the enchantment of cinema right to your fingertips. Our mission is simple: to provide you with an unparalleled movie-watching experience through a vast and carefully curated selection of films available for download.

        With MovieMagic, you can explore a world of cinematic wonders, from the latest Hollywood blockbusters to timeless classics and hidden gems from around the globe. We offer a user-friendly platform that allows you to effortlessly browse, discover, and download your favorite movies in high-quality formats.

        What sets MovieMagic apart is our commitment to delivering an exceptional and secure movie download experience. We prioritize your satisfaction and safety, ensuring that every download is not only seamless but also free from any unwanted surprises. Our platform is designed with your convenience in mind, providing you with the freedom to enjoy your chosen movies on any device, anytime, anywhere.

        Join us at MovieMagic and embark on a cinematic journey like never before. Whether you're a passionate film enthusiast or simply looking for the perfect movie night, we're here to make your movie-watching dreams come true. Explore, download, and relish the magic of the silver screen with MovieMagic today. Your next great movie adventure awaits!
    </p>
    <div>
        <!-- Footer -->
        <footer class="page-footer font-small blue footer-page" style="background: white">


            <div class="footer-copyright text-center py-3">© 2020 Copyright:
                <a href="/">Tinkesh</a>
            </div>


        </footer>
        <!-- Footer -->




<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>
</html>