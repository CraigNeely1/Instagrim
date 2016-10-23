<%-- 
    Document   : UsersPics
    Created on : Sep 24, 2014, 2:52:48 PM
    Author     : CN
--%>

<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@ page import="uk.ac.dundee.computing.aec.instagrim.stores.LoggedIn" %>
<!DOCTYPE html>
<html>
    
    <div id="container">
        
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="/Instagrim/Styles.css" />
    </head>
    <body>
        <div id ="body">
        <header>
        <div id="header">
        <h1>InstaGrim ! </h1>
        <h2>Your world in Black and White</h2>
        </div>
        </header>
        
        <nav>
            <ul>
                <li class="nav"><a href="/Instagrim/upload.jsp">Upload</a></li>
                <li class="nav"><a href="/Instagrim/Images/majed">Sample Images</a></li>
            </ul>
                  
             <%
                LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getloggedin()) {
                    %>
        
            <li class="nav"><a href="/Instagrim/Upload">Upload</a></li>
            <li class="nav"><a href="profile.jsp">Upload</a></li>
            <li class="nav"><a href="/Instagrim/profile/<%=lg.getUsername()%>">Your Profile</a></li>
            <li class="nav"><a href="/Instagrim/profile/<%=lg.getUsername()%>">Your Images</a></li>
         </nav>
            
         <article>
            <br>
            <br>
            <h2>Upload Profile Picture</h2>
            <br>
       <h3>File Upload</h3>
       
            <form method="POST" enctype="multipart/form-data" action="Image">
                File to upload: <input type="file" name="upfile"><br/>

                <br/>
                <input type="submit" value="Press"> to upload the file!
            </form>            
            
        </article>
        <div id="footer">
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </footer>
        </div>
        </div>
    </div>
    </body>
</html>
