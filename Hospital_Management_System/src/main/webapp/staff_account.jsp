<%-- 
    Document   : staff_account
    Created on : Dec 1, 2022, 12:04:20 AM
    Author     : dheer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>staff_account Page</title>
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
                <h2><br/>My Staff Account</h2>
                <form class="myForm" method="get" enctype="application/x-www-form-urlencoded" action="/html/codes/html_form_handler.cfm">


                    <p><h3>Doctor ID:<%=request.getAttribute("a")%>
                    </h3>  
                    </p>

                    <h3>Doctor Name</h3>    
                    <p>
                        <label>First Name:  
                            <%=request.getAttribute("b")%>
                        </label> 

                        <label>Middle Name:
                            <%=request.getAttribute("c")%>
                        </label>

                        <label>Last Name: 
                            <%=request.getAttribute("d")%>
                        </label>
                    </p>

                    <p>
                        <label>Date of Birth:
                            <%=request.getAttribute("e")%>
                        </label>


                    <fieldset>
                        <legend>Gender:<%=request.getAttribute("f")%></legend>
                    </fieldset>

                    <label>Date of appointment:
                        <%=request.getAttribute("g")%></label>
                    </p>
                    </br>

                    <h3>Educational Qualifications:</h3> 
                    <table id = "table">
                        <tr>
                            <th>Serial</th>
                            <th>Degree</th>
                            <th>Board/Institute</th>
                            <th>Year</th>
                            <th>Division/CGPA</th>
                            <th>Position</th>
                        </tr>
                        <%
                            String h[] = request.getAttribute("h").toString().split(",");
                            String i[] = request.getAttribute("i").toString().split(",");
                            String j[] = request.getAttribute("j").toString().split(",");
                            String k[] = request.getAttribute("k").toString().split(",");
                            String l[] = request.getAttribute("l").toString().split(",");

                        %>
                        <tr>
                            <td><label>1.</label></td>
                            <td><%=h[0]%></td>
                            <td><%=i[0]%></td>
                            <td><%=j[0]%></td>
                            <td><%=k[0]%></td>
                            <td><%=l[0]%></td>
                        </tr>

                        <tr>

                            <td><label>2.</label></td>
                            <td><%=h[1]%></td>
                            <td><%=i[1]%></td>
                            <td><%=j[1]%></td>
                            <td><%=k[1]%></td>
                            <td><%=l[1]%></td>
                        </tr>

                        <tr>
                            <td><label>3.</label></td>
                            <td><%=h[2]%></td>
                            <td><%=i[2]%></td>
                            <td><%=j[2]%></td>
                            <td><%=k[2]%></td>
                            <td><%=l[2]%></td>
                        </tr>
                        <tr>
                            <td><label>4.</label></td>
                            <td><%=h[3]%></td>
                            <td><%=i[3]%></td>
                            <td><%=j[3]%></td>
                            <td><%=k[3]%></td>
                            <td><%=l[3]%></td>
                        </tr>
                        <tr>
                            <td><label>5.</label></td>
                            <td><%=h[4]%></td>
                            <td><%=i[4]%></td>
                            <td><%=j[4]%></td>
                            <td><%=k[4]%></td>
                            <td><%=l[4]%></td>
                        </tr>

                    </table>

                    </br>
                    <%
                        String m[] = request.getAttribute("m").toString().split(",");
                        String n[] = request.getAttribute("n").toString().split(",");
                        String o[] = request.getAttribute("o").toString().split(",");
                        String p[] = request.getAttribute("p").toString().split(",");
                    %>
                    <h3>Experience:</h3> 
                    <table id = "table">
                        <tr>
                            <th>Serial</th>
                            <th>Job Designation</th>
                            <th>From</th>
                            <th>To</th>
                            <th>Organization</th>
                        </tr>
                        <tr>
                            <td><label>1.</label></td>
                            <td><%=m[0]%></td>
                            <td><%=n[0]%></td>
                            <td><%=o[0]%></td>
                            <td><%=p[0]%></td>
                        </tr>


                    </table>



                    <br/>

                    <h3>Membership:</h3>
                    <fieldset>
                        <legend><%=request.getAttribute("q")%></legend>
                    </fieldset>



                </form>
            </div>

            <div class="footer">
                <p> <b> &copy; All Rights Reserved by We Care Hospital </b></p>

            </div>


        </div>


    </body>
</html>
