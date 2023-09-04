<%--
  Created by IntelliJ IDEA.
  User: tinke
  Date: 03-09-2023
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="Add" method="post" enctype="multipart/form-data">
    <label for="text1">Movie Name</label>
    <input type="text" id="text1" name="movieName"><br><br>

    <label for="file1">Movie Image</label>
    <input type="file" id="file1" name="movieImage"><br><br>

    <label for="text2">MovieDecs</label>
    <input type="text" id="text2" name="MovieDecs"><br><br>

    <label for="text3">MovieTags</label>
    <input type="text" id="text3" name="movieTags"><br><br>

    <label for="text4">MovieLink</label>
    <input type="text" id="text4" name="movieLink"><br><br>

    <label for="text5">StoryLine</label>
    <input type="text" id="text5" name="storyLine"><br><br>



    <label for="file2">ScreenShot1</label>
    <input type="file" id="file2" name="screenshot1"><br><br>

    <label for="file3">ScreenShot1</label>
    <input type="file" id="file3" name="screenshot2"><br><br>

    <label for="file4">ScreenShot1</label>
    <input type="file" id="file4" name="screenshot3"><br><br>

    <input type="submit" value="Submit">
</form>
</body>
</html>
