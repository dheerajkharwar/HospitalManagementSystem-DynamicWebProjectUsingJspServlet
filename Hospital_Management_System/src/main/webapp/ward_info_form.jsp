<%-- 
    Document   : ward_info_form
    Created on : Dec 12, 2022, 11:38:23 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Ward Information Form</title>
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
                <h2><br/>Ward info Form</h2>
                <form class="myForm" method="post" enctype="application/x-www-form-urlencoded" action="Ward_Info_Servlet" onsubmit="return wardInfoValidation()">

                    <br>
                    <label>Ward Name:  
                        <input type="text" id="ward_name" name="ward_name" placeholder="Enter ward name" required>
                    </label> 
                    <br>
                    <label>Registrar ID: 
                        <input type="tel" id="reg_id" name="reg_id" placeholder="to be auto generated">
                    </label>
                    <label>Registrar Name: 
                        <input type="text" id="reg_name" name="reg_name" placeholder="to be auto generated" >
                    </label>

                    <br>
                    <label>Supervisor ID: 
                        <input type="tel" id="sup_id" name="sup_id" placeholder="to be auto generated">
                    </label>
                    <label>Supervisor Name: 
                        <input type="text" id="sup_name" name="sup_name" placeholder="to be auto generated" >
                    </label>


                    <br>

                    <table id = "table">
                        <tr>
                            <th>Serial</th>
                            <th>Bed No</th>
                            <th>Bed type</th>
                            <th>Rent</th>
                            <th>Status(empty/occupied)</th>
                        </tr>
                        <tr>
                            <td><label>1.</label></td>
                            <td><input type="text" id="bed_no1" name="bed_no1" placeholder="insert bed no" ></td>
                            <td><input type="text" id="bed_type1" name="bed_type1" placeholder="insert bed type"></td>
                            <td><input type="text" id="rent1" name="rent1" placeholder="insert rent"></td>
                            <td> <select  id="status1" name="status1" required>
                                    <option value="">select</option>
                                    <option value="occupied" >Occupied</option>
                                    <option value="empty" >Empty</option>
                                </select></td>
                        </tr>

                        <tr>
                            <td><label>2.</label></td>
                            <td><input type="text" id="bed_no2" name="bed_no2"  ></td>
                            <td><input type="text" id="bed_type2" name="bed_type2" ></td>
                            <td><input type="text" id="rent2" name="rent2" ></td>
                            <td> <select id="status2" name="status2" required>
                                    <option value="">select</option>
                                    <option value="occupied" >Occupied</option>
                                    <option value="empty" >Empty</option>
                                </select></td>
                        </tr>

                        <tr>
                            <td><label>3.</label></td>
                            <td><input type="text" id="bed_no3" name="bed_no3"  ></td>
                            <td><input type="text" id="bed_type3" name="bed_type3" ></td>
                            <td><input type="text" id="rent3" name="rent3" ></td>
                            <td> <select id="status3" name="status3" required>
                                    <option value="">select</option>
                                    <option value="occupied" >Occupied</option>
                                    <option value="empty" >Empty</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td><label>4.</label></td>
                            <td><input type="text" id="bed_no4" name="bed_no4"  ></td>
                            <td><input type="text" id="bed_type4" name="bed_type4" ></td>
                            <td><input type="text" id="rent4" name="rent4" ></td>
                            <td> <select id="status4" name="status4" required>
                                    <option value="">select</option>
                                    <option value="occupied" >Occupied</option>
                                    <option value="empty" >Empty</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td><label>5.</label></td>
                            <td><input type="text" id="bed_no5" name="bed_no5"  ></td>
                            <td><input type="text" id="bed_type5" name="bed_type5" ></td>
                            <td><input type="text" id="rent5" name="rent5" ></td>
                            <td> <select id="status5" name="status5" required>
                                    <option value="">select</option>
                                    <option value="occupied" >Occupied</option>
                                    <option value="empty" >Empty</option>
                                </select></td>
                        </tr>


                    </table>

                    <br>
                    Enter your password:<input type="text" id="userPass1" name="userPass1" required>
                    <input type="hidden" id="userPass2" name="userPass2" value="<%=request.getParameter("userPass")%>">
                    
                    <p><button >Submit form</button></p>
                    <br>

                </form>
            </div>

            <div class="footer">
                <p> <b> &copy; All Rights Reserved by We Care Hospital </b></p>

            </div>


        </div>


    </body>