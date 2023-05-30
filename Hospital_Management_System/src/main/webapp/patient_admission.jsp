<%-- 
    Document   : patient_admission
    Created on : Dec 12, 2022, 10:59:55 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Patients Admission Form</title>
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
                <h2><br/>Patients Admission Form</h2>
                <form class="myForm" method="post" enctype="application/x-www-form-urlencoded" action="Patient_Info_Servlet" onsubmit="return patientInfoValidate()">


                    <p>
                        <label>Admission Date/Time:
                            <input type="datetime-local" name="admission_time" required>
                        </label>
                    </p>


                    <h3><br/>Patients Name</h3>    
                    <p>
                        <label>First Name:  
                            <input type="text" id="fname" name="first_name" placeholder="Enter first name" required>
                        </label> 

                        <label>Middle Name: 
                            <input type="text" id="mname" name="middle_name" placeholder="Enter middle name">
                        </label>

                        <label>Last Name: 
                            <input type="text" id="lname" name="last_name" placeholder="Enter last name" required>
                        </label>
                    </p>


                    <h3><br/>Patients Info</h3>   
                    <p>
                        <label>Date of birth:
                            <input type="datetime-local" name="dob" required>
                        </label>
                    </p>

                    <p>
                        <label>Age:
                            <input type="tel" id="age" name="age">
                        </label>
                    </p> 

                    <fieldset>
                        <legend>Gender:</legend>
                        <p><label class="choice"> <input type="radio" name="gender" required value="male">Male</label></p>
                        <p><label class="choice"> <input type="radio" name="gender" required value="female">Female</label></p>
                        <p><label class="choice"> <input type="radio" name="gender" required value="others">Others</label></p>
                    </fieldset>

                    <fieldset>
                        <legend>Profession:</legend>
                        <p><label class="choice"> <input type="radio" name="profession" required value="govt_job"> Government Job </label></p>
                        <p><label class="choice"> <input type="radio" name="profession" required value="pvt_job"> Private Job</label></p>
                        <p><label class="choice"> <input type="radio" name="profession" required value="business"> Business</label></p>
                        <p><label class="choice"> <input type="radio" name="profession" required value="farmer"> Farmer</label></p>
                        <p><label class="choice"> <input type="radio" name="profession" required value="retired"> Retired</label></p>
                        <p><label class="choice"> <input type="radio" name="profession" required value="others">Others</label></p>
                    </fieldset>
                    <p>
                        <label>Blood Group:
                            <select id="blood_group" name="blood_group" required>
                                <option value="" selected="selected">Select One</option>
                                <option value="A+" >A+</option>
                                <option value="A-" >A-</option>
                                <option value="B+" >B+</option>
                                <option value="B-" >B-</option>
                                <option value="AB+">AB+</option>
                                <option value="AB-">AB-</option>
                                <option value="O+" >O+</option>
                                <option value="O-" >O-</option>
                            </select>
                        </label> 
                    </p>

                    <p>
                        <label>Phone Number:
                            <input type="tel" id="phone_number" name="phone_number">
                        </label>
                    </p>

                    <p>
                        <label>Email:
                            <input type="email" id="email_address" name="email_address">
                        </label>
                    </p>


                    <h3><br/>Present Address</h3>  
                    <p>
                        <label>Street No.:
                            <input type="tel" id="street_number" name="street_number">
                        </label>
                    </p>

                    <p>
                        <label>Street Name:
                            <input type="text" id="street_name" name="street_name">
                        </label>
                    </p>

                    <p>
                        <label>Area/village:
                            <input type="text" id="area" name="area">
                        </label>
                    </p>

                    <p>
                        <label>Thana:
                            <input type="text" id="thana" name="thana">
                        </label>
                    </p>

                    <p>
                        <label>District:
                            <select id="district" name="district" required>
                                <option value="" selected="selected">Select One</option>
                                <option value="Dhaka" >Dhaka</option>
                                <option value="Chittagong" >Chittagong</option>
                                <option value="Rajshashi" >Rajshashi</option>
                                <option value="Narayanganj" >Narayanganj</option>
                                <option value="Sylhet">Sylhet</option>
                                <option value="Rangpur">Rangpur</option>
                                <option value="Comilla" >Comilla</option>
                                <option value="Natore" >Natore</option>
                            </select>
                        </label> 
                    </p>
                    <label>Postal Code:
                        <input type="tel" id="postal_number" name="postal_number">
                    </label>


                    <h3><br/>Permanent Address</h3>  
                    <p>
                        <label>Street No.:
                            <input type="tel" id="street_number1" name="street_number1">
                        </label>
                    </p>

                    <p>
                        <label>Street Name:
                            <input type="text" id="street_name1" name="street_name1">
                        </label>
                    </p>

                    <p>
                        <label>Area/village:
                            <input type="text" id="area1" name="area1">
                        </label>
                    </p>

                    <p>
                        <label>Thana:
                            <input type="text" id="thana1" name="thana1">
                        </label>
                    </p>

                    <p>
                        <label>District:
                            <select id="district1" name="district1" required>
                                <option value="" selected="selected">Select One</option>
                                <option value="Dhaka" >Dhaka</option>
                                <option value="Chittagong" >Chittagong</option>
                                <option value="Rajshashi" >Rajshashi</option>
                                <option value="Narayanganj" >Narayanganj</option>
                                <option value="Sylhet">Sylhet</option>
                                <option value="Rangpur">Rangpur</option>
                                <option value="Comilla" >Comilla</option>
                                <option value="Natore" >Natore</option>
                            </select>
                        </label> 
                    </p>
                    <label>Postal Code:
                        <input type="tel" id="postal_number1" name="postal_number1">
                    </label>

                    <h3><br/>Room info</h3>

                    <p><label>Ward no:
                            <input type="tel" id="ward_no" name="ward_no">
                        </label></p>
                    <fieldset>
                        <legend>Room Choice:</legend>
                        <p><label class="choice"> <input type="radio" name="room_choice"  value="cabin"> Cabin </label></p>
                        <p><label class="choice"> <input type="radio" name="room_choice"  value="bed"> Bed </label></p>
                    </fieldset>

                    <p>
                        <label>Disease Name and Severity:
                            <input type="text" id="disease" name="disease" required>
                        </label>
                    </p>

                    <p>
                        <label>Special Note:
                            <textarea id="comments" name="comments" maxlength="500"></textarea>
                        </label>
                    </p>

                    <br/><br/><br/><br/><p>
                        <label>Amount Deposited:
                            <input type="tel" id="amount" name="amount" required>
                        </label>
                    </p>
                    Enter your password:<input type="text" id="userPass1" name="userPass1" required>
                    <input type="hidden" id="userPass2" name="userPass2" value="<%=request.getParameter("userPass")%>">
                    <p><button>Submit form</button></p>

                </form>
            </div>

            <div class="footer">
                <p> <b> &copy; All Rights Reserved by We Care Hospital </b></p>

            </div>


        </div>


    </body>
</html>