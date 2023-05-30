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
        <title>Medicine Entry Form</title>
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
                <h2><br/>Medicine Entry Form</h2>
                <form class="myForm" method="post" enctype="application/x-www-form-urlencoded" action="Medicine_Entry_Servlet" onsubmit="return medicineInfoValidate()">


                    <label>Supplier ID: 
                        <input type="tel" id="supplier_id" name="supplier_id" placeholder="to be auto generated" required>
                    </label>
                    <label>Supplier Name: 
                        <input type="text" id="supplier_name" name="supplier_name" placeholder="to be auto generated" required>
                    </label>

                    <p>
                        <label>Date of Supply:
                            <input type="datetime-local" name="supply_time" required>
                        </label>
                    </p>


                    <br>

                    <table id = "table">
                        <tr>
                            <th>Med ID</th>
                            <th>Name</th>

                            <th>Unit price</th>
                            <th>Quantity</th>
                            <th>Manufacture date</th>
                            <th>Expiry Date</th>
                        </tr>
                        <tr>
                            <td><input type="text" id="med_id1" name="med_id1" placeholder="insert medicine ID" required></td>
                            <td><input type="text" id="med_name1" name="med_name1" placeholder="insert medicine name" required></td>

                            <td><input type="text" id="price1" name="price1" placeholder="insert unit price" required></td>
                            <td><input type="text" id="qty1" name="qty1" placeholder="insert quantity" required></td>
                            <td><input type="date" name="manu_date1" required></td>
                            <td><input type="date" name="exp_date1" required></td>
                        </tr>
                    </table>
                    <br>
                    <br/>
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