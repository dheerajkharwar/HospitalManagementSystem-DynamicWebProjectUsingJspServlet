<%-- 
    Document   : nurse_info_form
    Created on : Dec 12, 2022, 11:34:03 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Nurse Information Form</title>
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
                <h2><br/>Nurse info Form</h2>
                <form class="myForm" method="post" enctype="application/x-www-form-urlencoded" action="Nurse_Info_Servlet" onsubmit="return doctorNurseInfoValidation()">
                    <br>
                    <h3><br/>Nurse Name</h3>    
                    <p>
                        <label>First Name:  
                            <input type="text" id="fname" name="first_name" placeholder="Enter first name" required>
                        </label> 

                        <label>Middle Name: 
                            <input type="text" id="mname" name="middle_name" placeholder="Enter middle name" required>
                        </label>

                        <label>Last Name: 
                            <input type="text" id="lname" name="last_name" placeholder="Enter last name" required>
                        </label>
                    </p>


                    <label>Date of Birth:
                        <input type="datetime-local" name="doc_dob" required>
                    </label>


                    <fieldset>
                        <legend>Gender:</legend>
                        <p><label class="choice"> <input type="radio" name="gender" required value="male">Male</label></p>
                        <p><label class="choice"> <input type="radio" name="gender" required value="female">Female</label></p>
                        <p><label class="choice"> <input type="radio" name="gender" required value="others">Others</label></p>
                    </fieldset>

                    <label>Date of appointment:
                        <input type="datetime-local" name="appointment_time" required>
                    </label>

                    <br>

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
                        <tr>
                            <td><label>1.</label></td>
                            <td>SSC/O'Levels</td>
                            <td><input type="text" id="inst_name1" name="inst_name1" placeholder="insert institute name" required></td>
                            <td><input type="text" id="year1" name="year1" placeholder="insert year of graduation" required></td>
                            <td><input type="text" id="div_cgpa1" name="div/cgpa1" placeholder="insert division/cgpa" required></td>
                            <td><input type="text" id="position1" name="position1" placeholder="insert position" required></td>
                        </tr>

                        <tr>
                            <td><label>2.</label></td>
                            <td>HSC/A'Levels</td>
                            <td><input type="text" id="inst_name2" name="inst_name2" required></td>
                            <td><input type="text" id="year2" name="year2" required></td>
                            <td><input type="text" id="div_cgpa2" name="div/cgpa2" required></td>
                            <td><input type="text" id="position2" name="position2" required></td>
                        </tr>

                        <tr>
                            <td><label>3.</label></td>
                            <td>BSc(Nursing)</td>
                            <td><input type="text" id="inst_name3" name="inst_name3" required></td>
                            <td><input type="text" id="year3" name="year3" required></td>
                            <td><input type="text" id="div_cgpa3" name="div/cgpa3" required></td>
                            <td><input type="text" id="position3" name="position3" required></td>
                        </tr>
                        <tr>
                            <td><label>4.</label></td>
                            <td><input type="text" id="degree4" name="degree4" placeholder="insert degree"></td>
                            <td><input type="text" id="inst_name4" name="inst_name4"></td>
                            <td><input type="text" id="year4" name="year4"></td>
                            <td><input type="text" id="div_cgpa4" name="div/cgpa4"></td>
                            <td><input type="text" id="position4" name="position4"></td>
                        </tr>
                        <tr>
                            <td><label>5.</label></td>
                            <td><input type="text" id="degree5" name="degree5"></td>
                            <td><input type="text" id="inst_name5" name="inst_name5"></td>
                            <td><input type="text" id="year5" name="year5"></td>
                            <td><input type="text" id="div_cgpa5" name="div/cgpa5"></td>
                            <td><input type="text" id="position5" name="position5"></td>
                        </tr>


                    </table>

                    <br>

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
                            <td><input type="text" id="job_desg1" name="job_desg1" placeholder="insert job designation" required></td>
                            <td><input type="date" name="from1" required></td>
                            <td><input type="date" name="to1" required></td>
                            <td><input type="text" id="org_name1" name="org_name1" placeholder="insert name of organization" required></td>
                        </tr>
                        <tr>
                            <td><label>2.</label></td>
                            <td><input type="text" id="job_desg2" name="job_desg2" ></td>
                            <td><input type="date" name="from2" ></td>
                            <td><input type="date" name="to2" ></td>
                            <td><input type="text" id="org_name2" name="org_name2"></td>
                        </tr>
                        <tr>
                            <td><label>3.</label></td>
                            <td><input type="text" id="job_desg3" name="job_desg3" ></td>
                            <td><input type="date" name="from3" ></td>
                            <td><input type="date" name="to3" ></td>
                            <td><input type="text" id="org_name3" name="org_name3"></td>    </tr>
                        <tr>
                            <td><label>4.</label></td>    
                            <td><input type="text" id="job_desg4" name="job_desg4" ></td>
                            <td><input type="date" name="from4" ></td>
                            <td><input type="date" name="to4" ></td>
                            <td><input type="text" id="org_name4" name="org_name4"></td>   
                        </tr>
                        <tr>
                            <td><label>5.</label></td>
                            <td><input type="text" id="job_desg5" name="job_desg5" ></td>
                            <td><input type="date" name="from5" ></td>
                            <td><input type="date" name="to5" ></td>
                            <td><input type="text" id="org_name5" name="org_name5"></td>
                        </tr>

                    </table>
                    <br/>
                    Enter your password:<input type="text" id="userPass1" name="userPass1" required>
                    <input type="hidden" id="userPass2" name="userPass2" value="<%=request.getParameter("userPass")%>">
                    
                    <p><button>Submit form</button></p>
                    <br>

                </form>
            </div>

            <div class="footer">
                <p> <b> &copy; All Rights Reserved by We Care Hospital </b></p>

            </div>


        </div>


    </body>
</html>