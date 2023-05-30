<%-- 
    Document   : viewPrescription
    Created on : Dec 1, 2022, 4:36:47 PM
    Author     : dheer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>View Prescription</title>
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
                <h2><br/>Prescription Form</h2>
                <h2>Prescription ID: <%=request.getAttribute("1")%></h2>


                </br>
                <p>
                    <label>Patient ID: <%=request.getAttribute("2")%>
                    </label>
                </p>
                <p>
                <p>
                    <label>Doctor ID: <%=request.getAttribute("12")%>
                    </label>
                </p>

                <p>
                    <label>Doctor Name: <%=request.getAttribute("13")%>
                    </label>
                </p>
                <p>
                    <label>Date of Advice: <%=request.getAttribute("3")%>
                    </label>
                </p>
                </br>

                <%
                    String med_id[] = request.getAttribute("4").toString().split(",");
                    String med_name[] = request.getAttribute("5").toString().split(",");
                    String quantity[] = request.getAttribute("6").toString().split(",");
                    String time[] = request.getAttribute("7").toString().split(",");

                %>

                <h3>Medicines Prescribed:</h3> 
                <table id = "table">
                    <tr>
                        <th>Serial No.</th>
                        <th>Medicine ID</th>
                        <th>Name of Medicine</th>
                        <th>Qty per time</th>
                        <th>Morning</th>
                        <th>Afternoon</th>
                        <th>Night</th>
                    </tr>
                    <tr>
                        <td><label>1.</label></td>
                        </<td><%=med_id[0]%></td>
                        <td> <%=med_name[0]%> </td>
                        <td> <%=quantity[0]%> </td>
                        <td><%=time[0]%> </td>
                        <td><%=time[1]%> </td>
                        <td><%=time[2]%></td>
                    </tr>

                    <tr>
                        <td><label>2.</label></td>
                        <td><%=med_id[1]%></td>
                        <td> <%=med_name[1]%> </td>
                        <td> <%=quantity[1]%> </td>
                        <td><%=time[3]%> </td>
                        <td><%=time[4]%> </td>
                        <td><%=time[5]%></td>
                    </tr>
                    <tr>
                        <td><label>3.</label></td>
                        <td><%=med_id[2]%></td>
                        <td> <%=med_name[2]%> </td>
                        <td> <%=quantity[2]%> </td>
                        <td><%=time[6]%> </td>
                        <td><%=time[7]%> </td>
                        <td><%=time[8]%></td>
                    </tr>
                    <tr>
                        <td><label>4.</label></td>
                        <td><%=med_id[3]%></td>
                        <td> <%=med_name[3]%> </td>
                        <td> <%=quantity[3]%> </td>
                        <td><%=time[9]%> </td>
                        <td><%=time[10]%> </td>
                        <td><%=time[11]%></td>
                    </tr>
                    <tr>
                        <td><label>5.</label></td>
                        <td><%=med_id[4]%></td>
                        <td> <%=med_name[4]%> </td>
                        <td> <%=quantity[4]%> </td>
                        <td><%=time[12]%> </td>
                        <td><%=time[13]%> </td>
                        <td><%=time[14]%></td>
                    </tr>

                </table>

                <%
                    String test_id[] = request.getAttribute("8").toString().split(",");
                    String test_name[] = request.getAttribute("9").toString().split(",");
                %>

                <h3>Test Advice:</h3> 
                <table id = "table">
                    <tr>
                        <th>Serial Number</th>
                        <th>Test ID</th>
                        <th>Name of test</th>
                    </tr>
                    <tr>
                        <td><label>1.</label></td>
                        <td><%=test_id[0]%></td>
                        <td><%=test_name[0]%></td>
                    </tr>
                    <tr>
                        <td><label>2.</label></td>
                        <td><%=test_id[1]%></td>
                        <td><%=test_name[1]%></td>
                    </tr>
                    <tr>
                        <td><label>3.</label></td>
                        <td><%=test_id[2]%></td>
                        <td><%=test_name[2]%></td>
                    </tr>
                </table>
            </div>
            <br>
            <p>
                <label><h3>Special Note/Restrictions:</h3> <%=request.getAttribute("10")%></label>
            </p>

            <p>
                <label><h3>Signature With Date:</h3> <%=request.getAttribute("11")%></label>
            </p>

            <div class="footer">
                <p> <b> &copy; All Rights Reserved by We Care Hospital </b></p>

            </div>


        </div>


    </body>
</html>
