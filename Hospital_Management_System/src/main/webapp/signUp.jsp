<%-- 
    Document   : signUp
    Created on : Dec 11, 2022, 3:12:39 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Page</title>
        <link rel="stylesheet" href="style.css">
        <script src="validation.js"></script>
    </head>
    <body class="a">
        <div class="main">
            <div class="header">
                <a href="home.html"><img src="12.jpg"/></a></div>

            <div class="mainmenu">
                <ul>
                    <li ><a href="home.html">Home </a></li>
                    <li><a href="specialist.jsp">Specialist</a></li> 
                    <li><a href="patientsCare.html">Patient Care </a></li>
                    <li><a href="staffaccount.html">Staff Account</a></li>
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="contact.html">Contact Us</a></li>
                </ul>
            </div>
            <br>
        <form class="myForm" method="post" enctype="application/x-www-form-urlencoded" action="SignUp" onsubmit="return passwordValidation()">
                New Password : <input type="text" id="pass" name="pass" required><br>
                Confirm Password : <input type="text" id="cnf_pass" name="cnf_pass" required>
                <input type="hidden" name="user_id" value="<%=request.getAttribute("user_id")%>">
                <input type="hidden" name="form_name" value="<%=request.getAttribute("form_name")%>">
                <input type="hidden" name="user_pass" value="<%=request.getAttribute("user_pass")%>">
                <button>Submit</button>
            </form>
            <br><br>
            <div class="footer">
                <p> <b> &copy; All Rights Reserved by We Care Hospital </b></p>

            </div>
        </div>
    </body>
</html>
