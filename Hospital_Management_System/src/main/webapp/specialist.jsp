<%-- 
    Document   : specialist
    Created on : Dec 1, 2022, 9:42:21 PM
    Author     : dheer
--%>

<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.hospital.DatabaseConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Specialist page</title>
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
        <br>
        <h1>Specialists: </h1> 
        <br>
        <table id = "table">
            <tr>
                <th>Serial</th>
                <th>Name</th>
                <th>Degree</th>
                <th>Specialization</th>
                <th>Consulting days</th>
            </tr>

            <%
                Connection con = null;
                Statement stmt = null;
                con = DatabaseConnection.ConnectDB();

                try {

                    stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("select doctor_info.fname,"
                            + " doctor_info.lname, doctor_info.degree,"
                            + " specialist.specialization, specialist.consulting_days"
                            + " from specialist inner join doctor_info"
                            + " on specialist.doctor_id = doctor_info.doctor_id");
                    String s = "";
                    while (rs.next()) {
                        s = s + "<tr>"
                                + "<td><label>1.</label></td>"
                                + "<td>" + rs.getString(1) + " " + rs.getString(2) + "</td>"
                                + "<td>" + rs.getString(3) + "</td>"
                                + "<td>" + rs.getString(4) + "</td>"
                                + "<td>" + rs.getString(5) + "</td>"
                                + "</tr>";
                    }
                    out.print(s);

                } catch (SQLException ex) {
                    Logger.getLogger(ex.getMessage());
                } finally {
                    if (con != null) {
                        try {
                            con.close();
                        } catch (SQLException ex) {
                            Logger.getLogger(ex.getMessage());
                        }
                    }
                    if (stmt != null) {
                        try {
                            stmt.close();
                        } catch (SQLException ex) {
                            Logger.getLogger(ex.getMessage());
                        }
                    }

                }
            %>
        </table>
        <div class="footer">
            <p> <b> &copy; All Rights Reserved by We Care Hospital </b></p>

        </div>


    </div>

</body>
</html>
