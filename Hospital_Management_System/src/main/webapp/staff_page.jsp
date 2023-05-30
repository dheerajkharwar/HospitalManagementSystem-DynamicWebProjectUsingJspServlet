<%-- 
    Document   : staff_page
    Created on : Nov 30, 2022, 9:07:18 PM
    Author     : dheer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>staff Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style.css">
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

            <div class="a">
                <br>
                <form class="myForm" method="post" enctype="application/x-www-form-urlencoded" action="entry_forms.jsp">
                    <input type="hidden" name="user_id" value="<%=request.getAttribute("user_id")%>">
                    <input type="hidden" name="user_pass" value="<%=request.getAttribute("user_pass")%>">
                    <button style="margin-top: 0px">Data Entry Forms</button>
                </form>
                <form class="myForm" method="post" enctype="application/x-www-form-urlencoded" action="UserPageServlet">
                    <input type="hidden" name="user_id" value="<%=request.getAttribute("user_id")%>">
                    <input type="hidden" name="user_pass" value="<%=request.getAttribute("user_pass")%>">
                    <button style="margin-top: 0px">View My Account</button>
                </form>
                <form class="myForm" method="post" enctype="application/x-www-form-urlencoded" action="resetPassword.jsp">
                    <input type="hidden" name="user_id" value="<%=request.getAttribute("user_id")%>">
                    <input type="hidden" name="form_name" value="doctor">
                    <button style="margin-top: 0px">Reset Password</button>
                </form>

            </div>
        </div>
    </body>
</html>
