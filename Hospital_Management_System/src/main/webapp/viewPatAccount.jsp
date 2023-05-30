<%-- 
    Document   : viewPatAccount.jsp
    Created on : Dec 1, 2022, 2:03:08 PM
    Author     : dheer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patients Account</title>
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
                <h2><br/>My Account Info</h2>
                <form class="myForm" method="get" enctype="application/x-www-form-urlencoded" action="pat_investigation.html">
                    <h3>Patient ID: <%=request.getAttribute("1")%></h3>

                    <p>
                        <label>Admission Date/Time:<%=request.getAttribute("2")%>

                        </label>
                    </p>


                    <h3><br/>Patients Name</h3>    
                    <p>
                        <label>First Name:  
                            <%=request.getAttribute("3")%>
                        </label> 

                        <label>Middle Name: 
                            <%=request.getAttribute("4")%>
                        </label>

                        <label>Last Name: 
                            <%=request.getAttribute("5")%>
                        </label>
                    </p>


                    <h3><br/>Patients Info</h3>   
                    <p>
                        <label>Date of birth:<%=request.getAttribute("6")%>

                        </label>
                    </p>
                    <p>
                        <label>Age:<%=request.getAttribute("7")%>

                        </label>
                    </p>

                    <fieldset>
                        <legend>Gender: <%=request.getAttribute("8")%></legend>

                    </fieldset>

                    <fieldset>
                        <legend>Profession:<%=request.getAttribute("9")%></legend>
                    </fieldset>
                    <p>
                        <label>Blood Group:<%=request.getAttribute("10")%>
                        </label> 
                    </p>

                    <p>
                        <label>Phone <%=request.getAttribute("11")%>

                        </label>
                    </p>

                    <p>
                        <label>Email:
                            <%=request.getAttribute("12")%>
                        </label>
                    </p>


                    <h3><br/>Present Address</h3>  
                    <p>
                        <label>Street No.:
                            <%=request.getAttribute("13")%>
                        </label>
                    </p>

                    <p>
                        <label>Street Name:
                            <%=request.getAttribute("14")%>
                        </label>
                    </p>

                    <p>
                        <label>Area/village:
                            <%=request.getAttribute("15")%>
                        </label>
                    </p>

                    <p>
                        <label><%=request.getAttribute("16")%>
                        </label>
                    </p>

                    <p>
                        <label>District:
                            <%=request.getAttribute("17")%>
                        </label> 
                    </p>
                    <label>Postal Code:
                        <%=request.getAttribute("18")%>
                    </label>
                    </p>
                    <h3><br/>Permanent Address</h3>  
                    <p>
                        <label>Street No.:
                            <%=request.getAttribute("19")%>
                        </label>
                    </p>

                    <p>
                        <label>Street Name:
                            <%=request.getAttribute("20")%>
                        </label>
                    </p>

                    <p>
                        <label>Area/village:
                            <%=request.getAttribute("21")%>
                        </label>
                    </p>

                    <p>
                        <label><%=request.getAttribute("22")%>
                        </label>
                    </p>

                    <p>
                        <label>District:
                            <%=request.getAttribute("23")%>
                        </label> 
                    </p>
                    <label>Postal Code:
                        <%=request.getAttribute("24")%>
                    </label>
                    </p>

                    <h3><br/>Room info</h3>

                    <p><label>Ward no:
                            <%=request.getAttribute("25")%>
                        </label></p>
                    <fieldset>
                        <legend>Room Choice:<%=request.getAttribute("26")%></legend>
                    </fieldset>

                    <p>
                        <label>Disease Name and Severity:
                            <%=request.getAttribute("27")%>
                        </label>
                    </p>

                    <p>
                        <label>Special Note:
                            <%=request.getAttribute("28")%>
                        </label>
                    </p>

                    <br/><br/><br/><br/><p>
                        <label>Amount Deposited:
                            <%=request.getAttribute("29")%>
                        </label>
                    </p>

                </form>
            </div>

            <div class="footer">
                <p> <b> &copy; All Rights Reserved by We Care Hospital </b></p>

            </div>


        </div>


    </body>
</html>
