<%-- 
    Document   : prescription_form
    Created on : Dec 12, 2022, 11:13:06 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Prescription Form</title>
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
                <h2><br/>Prescription Form</h2>
                <form class="myForm" method="post" enctype="application/x-www-form-urlencoded" action="Prescription_Servlet" onsubmit="return prescriptionFormValidation()">
                    <br>
                    <p>
                        <label>Patient ID:
                            <input type="tel" id="pat_id" name="pat_id" placeholder="Insert Patient ID" required>
                        </label>
                    </p>

                    <p>
                        <label>Date of Advice:
                            <input type="datetime-local" name="advice_time" required>
                        </label>
                    </p>
                    <br>

                    <h3>Medicines Prescribed:</h3> 
                    <table id = "table">
                        <tr>
                            <th>Medicine ID</th>
                            <th>Name of Medicine</th>
                            <th>Qty per time</th>
                            <th>Morning</th>
                            <th>Afternoon</th>
                            <th>Night</th>
                        </tr>
                        <tr>
                            <td><label>1.<input type="tel" id="med_id1" name="med_id1" placeholder="Insert Medicine ID" required></label></td>
                            <td><input type="text" id="med_name1" name="med_name1" placeholder="Insert Medicine name" required></td>
                            <td> <select id="quantity1" name="quantity1" required>
                                    <option value="" selected="selected">Select One</option>
                                    <option value="0" >0</option>
                                    <option value="1" >1</option>
                                    <option value="2" >2</option>
                                    <option value="3" >3</option>
                                </select></td>
                            <td><select id="time1" name="time1" required>
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>
                            <td><select id="time11" name="time11" required>
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>
                            <td><select id="time111" name="time111" required>
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>

                        </tr>

                        <tr>
                            <td><label>2.<input type="tel" id="med_id2" name="med_id2" ></label></td>
                            <td><input type="text" id="med_name2" name="med_name2" ></td>
                            <td> <select id="quantity2" name="quantity2" >
                                    <option value="" selected="selected">Select One</option>
                                    <option value="0" >0</option>
                                    <option value="1" >1</option>
                                    <option value="2" >2</option>
                                    <option value="3" >3</option>
                                </select></td>
                            <td><select id="time2" name="time2">
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>
                            <td><select id="time22" name="time22">
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>
                            <td><select id="time222" name="time222">
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>

                        </tr>

                        <tr>
                            <td><label>3.<input type="tel" id="med_id3" name="med_id3"></label></td>
                            <td><input type="text" id="med_name3" name="med_name3"></td>
                            <td> <select id="quantity3" name="quantity3">
                                    <option value="" selected="selected">Select One</option>
                                    <option value="0" >0</option>
                                    <option value="1" >1</option>
                                    <option value="2" >2</option>
                                    <option value="3" >3</option>
                                </select></td>
                            <td><select id="time3" name="time3">
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>
                            <td><select id="time33" name="time33" >
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>
                            <td><select id="time333" name="time333" >
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>

                        </tr>

                        <tr>
                            <td><label>4.<input type="tel" id="med_id4" name="med_id4" ></label></td>
                            <td><input type="text" id="med_name4" name="med_name4" ></td>
                            <td> <select id="quantity4" name="quantity4">
                                    <option value="" selected="selected">Select One</option>
                                    <option value="0" >0</option>
                                    <option value="1" >1</option>
                                    <option value="2" >2</option>
                                    <option value="3" >3</option>
                                </select></td>
                            <td><select id="time4" name="time4" >
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>
                            <td><select id="time44" name="time44">
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>
                            <td><select id="time444" name="time444" >
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>

                        </tr>

                        <tr>
                            <td><label>5.<input type="tel" id="med_id5" name="med_id5" ></label></td>
                            <td><input type="text" id="med_name5" name="med_name5" ></td>
                            <td> <select id="quantity5" name="quantity5">
                                    <option value="" selected="selected">Select One</option>
                                    <option value="0" >0</option>
                                    <option value="1" >1</option>
                                    <option value="2" >2</option>
                                    <option value="3" >3</option>
                                </select></td>
                            <td><select id="time5" name="time5" >
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>
                            <td><select id="time55" name="time55" >
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>
                            <td><select id="time555" name="time555">
                                    <option value="" selected="selected">Select One</option>
                                    <option value="before meal" >before meal</option>
                                    <option value="after meal" >after meal</option>
                                    <option value="none" >none</option>
                                    <option value="any" >any</option>
                                </select>
                            </td>

                        </tr>
                    </table>

                    <br>

                    <h3>Test Advices:</h3> 
                    <table id = "table">
                        <tr>
                            <th>Serial Number</th>
                            <th>Name of test</th>
                        </tr>
                        <tr>
                            <td><label>1.<input type="number" id="test_id1" name="test_id1" placeholder="Insert test ID"></label></td>
                            <td><input type="text" id="test_name1" name="test_name1" placeholder="Insert test name"></td>
                        </tr>
                        <tr>
                            <td><label>2.<input type="number" id="test_id2" name="test_id2" ></label></td>
                            <td><input type="text" id="test_name2" name="test_name2"></td>
                        </tr>
                        <tr>
                            <td><label>3.<input type="number" id="test_id3" name="test_id3"></label></td>
                            <td><input type="text" id="test_name3" name="test_name3"></td>
                        </tr>
                    </table>
                    <br/><br/>
                    <p>
                        <label>Special Note/Restrictions:
                            <textarea id="comments" name="comments" maxlength="500"></textarea>
                        </label>
                    </p>

                    <br/><br/><br/><br/>

                    <br/>

                    <p>
                        <label>Signature With Date:<input type="text" id="sign" name="sign">
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