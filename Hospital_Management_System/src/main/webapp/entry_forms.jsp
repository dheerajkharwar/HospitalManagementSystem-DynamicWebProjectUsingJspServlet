<%-- 
    Document   : entry_forms
    Created on : Dec 1, 2022, 6:30:52 PM
    Author     : dheer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Data Entry Forms</title>
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

            <%  
                String userId = request.getParameter("user_id");
                String userPass = request.getParameter("user_pass");
            %>
            
            </br>
            <h1>Data Entry Forms</h1>
            </br>
            </br>
            <h3>1. <a href="patient_admission.jsp?userId=<%=userId%>&userPass=Ab<%=userPass%>9"> Patient Admission form </a></h3>
            <h3>2. <a href="patient_investigation.jsp?userId=<%=userId%>&userPass=Ab<%=userPass%>9"> Patient Initial Investigation form </a></h3>
            <h3>3. <a href="prescription_form.jsp?userId=<%=userId%>&userPass=Ab<%=userPass%>9"> Patient's Prescription form </a></h3>
            <h3>4. <a href="doctor_info_form.jsp?userId=<%=userId%>&userPass=Ab<%=userPass%>9"> New Doctor entry form </a></h3>
            <h3>5. <a href="nurse_info_form.jsp?userId=<%=userId%>&userPass=Ab<%=userPass%>9"> New Nurse entry form </a></h3>
            <h3>6. <a href="ward_info_form.jsp?userId=<%=userId%>&userPass=Ab<%=userPass%>9"> Ward Info form </a></h3>
            <h3>7. <a href="med_entry_form.jsp?userId=<%=userId%>&userPass=Ab<%=userPass%>9"> Medicine entry form </a></h3>
            <h3>8. <a href="specialist_info_form.jsp?userId=<%=userId%>&userPass=Ab<%=userPass%>9"> New Specialist entry form </a></h3>            

            <div class="footer">
                <p> <b> &copy; All Rights Reserved by We Care Hospital </b></p>

            </div>


        </div>


    </body>

</html>
