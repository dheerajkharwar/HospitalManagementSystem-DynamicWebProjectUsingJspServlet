<%-- 
    Document   : med_entry_form
    Created on : Dec 12, 2022, 11:42:01 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Specialist Entry Form</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="style.css">
        <script src="validation.js"></script>

    </head>
    <body class="a">                            
        <div class="main">
            <div class="header">
                <a href="home.html"><img src="12.jpg" alt=""/></a></div>

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
                <h2><br>Specialist Entry Form</h2>
                <form class="myForm" method="post" enctype="application/x-www-form-urlencoded" action="Specialist_Entry_Servlet" onsubmit="return specialistInfoValidate()">


                    <label>Doctor ID: 
                        <input type="tel" id="doctor_id" name="doctor_id" placeholder="Enter doctor ID..." required>
                    </label>
                    <label>Specialization: 
                        <input type="text" id="spez" name="spez" placeholder="Enter specialization..." required>
                    </label>
                    <label>Consulting Days: 
                        <input type="cons" id="cons" name="cons" placeholder="Enter consulting days..." required>
                    </label>
                    <p>
                        Enter your password:<input type="text" id="userPass1" name="userPass1" required>
                        <input type="hidden" id="userPass2" name="userPass2" value="<%=request.getParameter("userPass")%>">

                    <p><button>Submit form</button></p>
                    <br>
                </form>
            </div>
            <div class="footer">
                <p><b> &copy; All Rights Reserved by We Care Hospital </b></p>
            </div>


        </div>

    </body>