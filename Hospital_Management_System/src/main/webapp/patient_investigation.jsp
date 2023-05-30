<%-- 
    Document   : patient_investigation
    Created on : Dec 12, 2022, 11:02:45 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Patients Investigation Form</title>
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
                <h2><br/>Patients Initial Investigation Form</h2>
                <form class="myForm" method="post" enctype="application/x-www-form-urlencoded" action="Patient_Investigation_Servlet" onsubmit="return investigationInfoValidate()">


                    <p>
                        <label>Patient ID:
                            <input type="tel" id="pat_id" name="pat_id" placeholder="Insert Patient ID" required>
                        </label>
                    </p>


                    <h3><br/>Patient Personal Info</h3>    
                    <p>
                        <label>Height(in cm):  
                            <input type="tel" id="height" name="height" placeholder="Enter height" required>
                        </label> 

                        <label>Weight(in pounds): 
                            <input type="tel" id="weight" name="weight" placeholder="Enter weight" required>
                        </label> 

                    </p>


                    <h3><br/>Symptoms of Disease</h3>   
                    <p>
                        <label>1:
                            <input type="text" id="disease_1" name="disease_1" placeholder="Disease" required>
                        </label>
                        <label>2:
                            <input type="text" id="disease_2" name="disease_2" >
                        </label>
                        <label>3:
                            <input type="text" id="disease_3" name="disease_3" >
                        </label>
                        <label>4:
                            <input type="text" id="disease_4" name="disease_4" >
                        </label>
                        <label>5:
                            <input type="text" id="disease_5" name="disease_5" >
                        </label>
                        <label>6:
                            <input type="text" id="disease_6" name="disease_6" >
                        </label>
                    </p>

                    <h3><br/>Blood Pressure:</h3>    
                    <p>
                        <label>Upper:  
                            <input type="tel" id="upper_bp" name="upper"  required>
                        </label> 

                        <label>Lower: 
                            <input type="tel" id="lower_bp" name="lower"  required>
                        </label> 

                    </p>
                    <h3><br/>General Food Habbit</h3>   
                    <p>
                        <label>Breakfast 1:
                            <input type="text" id="breakf_1" name="breakf_1"  required>
                        </label>
                        <label>2:
                            <input type="text" id="breakf_2" name="breakf_2" >
                        </label>
                        <label>          3:
                            <input type="text" id="breakf_3" name="breakf_3" >
                        </label>
                        <label><br/>Lunch 1:
                            <input type="text" id="lunch_1" name="lunch_1"  required>
                        </label>
                        <label>      2:
                            <input type="text" id="lunch_2" name="lunch_2" >
                        </label>
                        <label>      3:
                            <input type="text" id="lunch_3" name="lunch_3" >
                        </label>
                        <label><br/>Dinner 1:
                            <input type="text" id="dinner_1" name="dinner_1"  required>
                        </label>
                        <label>       2:
                            <input type="text" id="dinner_2" name="dinner_2" >
                        </label>
                        <label>       3:
                            <input type="text" id="dinner_3" name="dinner_3" >
                        </label>    

                    </p>

                    <h3><br/>Hobby</h3>  <br>
                    <fieldset>
                        <legend>Game:</legend>
                        <p> 
                            <label class="choice"> <input type="checkbox" name="game"  value="football">Foot ball</label>
                            <label class="choice"> <input type="checkbox" name="game"  value="hockey">Hockey</label>
                            <label class="choice"> <input type="checkbox" name="game"  value="cricket">Cricket</label>
                            <label class="choice"> <input type="checkbox" name="game"  value="chess">Chess</label>
                            <label class="choice"> <input type="checkbox" name="game"  value="all">All</label>
                            <label class="choice"> <input type="checkbox" name="game"  value="none">None</label>
                        </p>

                    </fieldset>

                    <br><br>
                    <fieldset>
                        <legend>Others:</legend>
                        <div style="margin-top: -30px" >
                            <p><label class="choice"> <input type="radio" name="others" required value="tourism"> Tourism </label></p>
                            <p><label class="choice"> <input type="radio" name="others" required value="writing"> Writing</label></p>
                        </div>
                    </fieldset>


                    <br/><br/>
                    <p>
                        <label>Disease Name:
                            <input type="text" id="disease" name="disease" required>
                        </label>
                    </p>

                    <br/>

                    <p>
                        <label>Signature With Date: <input type="text" id="sign" name="sign" required>
                            <br/><br/><br/><br/>
                        </label>

                    </p>
                    <p>
                        <label>Doctor ID:
                            <input type="text" id="doc_id" name="doc_id" value="<%=request.getParameter("userId")%>" readonly>
                        </label>
                    </p>

                    <p>
                        <label>Doctor Name:
                            <input type="text" id="doc_name" name="doc_name" required>
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