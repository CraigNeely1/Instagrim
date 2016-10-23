<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : CN
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.UserProfile" %>
<!DOCTYPE html>
<html>
    
    <div id="container">
   

    <head>
        <title>Instagrim</title>
        <link rel="stylesheet" type="text/css" href="Styles.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    
    <body>
       <div id="body"> 
        <header>
            <div id="header">
            <h1>InstaGrim ! </h1>
            <h2>Your world in Black and White</h2>
            </div>
        </header>
        <nav>
            <ul>
            <h2>Your Profile</h2>
            
            <%
                LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getloggedin()) {
                    %>
                
                <%=UserName%>
                
                <%}

                }else{  

                    %>
                    
                    <%
                        }%>
           <%     
               java.util.LinkedList<UserProfile> userInfo = (java.util.LinkedList<UserProfile>) request.getAttribute("userInfo");
               
                UserProfile user;
                user = new UserProfile();
                user =(UserProfile) userInfo.get (0);
                
                if (userInfo == null) {
                
                %>
                
                <p> Please log into your Profile</p>
                <a href="/Instagrim">Home</a>
                
                <% }
                    else
                   {
                   String Account = user.getAccount();
                   String First_name = user.getFirst_name();
                   String Second_name = user.getSecond_name();
                   String Email = user.getEmail();
                %>
                
                <%=Account%><h2>Profile</h2>
                <p>Name: <%=First_name%> <%=Second_name%> </p>
                <p>Email: <%=Email%> </p> 
                
                <%
                   

                }
                
    
                %>
                
               
                <li><a href="upload.jsp">Upload</a></li>
                    <%
                        
//                        LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                        if (lg != null) {
                            String UserName = lg.getUsername();
                            if (lg.getloggedin()) {
                    %>

                <li><a href="/Instagrim/Images/<%=lg.getUsername()%>">Your Images</a></li>
                    <%}
                            }else{
                                %>
                 <li><a href="register.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a></li>
                <%
                                        
                            
                    }%>
            </ul>
        </nav>
            <div id="footer">
        <footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
            </ul>
        </div>
        </footer> 
        </div>
    </body>
    </div>
</html>
