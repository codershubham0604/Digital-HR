<%-- 
    Document   : index
    Created on : Jul 31, 2020, 11:44:55 AM
    Author     : Shubham
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Connect.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style1.css" rel="stylesheet" type="text/css"/>
        <script src="js/slider.js" type="text/javascript"></script>
    </head>
    <body onload="moveSlider()">
        <div id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo.png" width="150" height="150"/>
                </div>
                <div id="title">
                    Digital HR (ElectroTech)
                </div>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="registration.jsp">Registration</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="enquiry.jsp">Enquiry</a></li>
                </ul>
            </div>
            <div id="slider">
                <img id="slide" width="1000px" height="250px"/>
            </div>
            <div id="main">
                <div id="left">
                    <marquee direction="up" height="600" onmouseover="stop()" onmouseout="start()">
                    <%
                        DbManager db=new DbManager();
                        String query="select * from notification";
                        ResultSet rs=db.selectData(query);
                        while(rs.next())
                        {
                    %>
                    
                    <p style="color:red;">
                        <img src="images/new.jpg" width="30" height="20"/>
                        <%=rs.getString(2)%>
                    </p>
                    <p><%=rs.getString(3)%></p>
                    <%  } %>
                    </marquee>
                </div>
                <div id="right">
                    <form action="genzonecode/enquirycode.jsp" method="post">
                        <h2 style="color:blue;text-align:center;">Enquiry Form</h2>
                        <table style="width:60%;margin:0 auto;">
                            <tr>
                                <td>Enter Your Name</td>
                                <td>
                                    <input type="text" name="name" required/>
                                </td>
                            </tr>
                            <tr>
                                <td>Select Your Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male"/>Male
                                    <input type="radio" name="gender" value="Female"/>Female
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Your Address</td>
                                <td>
                                    <textarea name="address"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Your Contact No.</td>
                                <td>
                                    <input type="text" name="contactno" required/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Your Email Address</td>
                                <td>
                                    <input type="email" name="emailaddress" required/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Your Message</td>
                                <td>
                                    <textarea name="message"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <input type="submit" value="Submit"/>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
            <div id="footer">
                <div id="lfooter">
                    Copyright &copy; to Digital HR
                </div> 
                <div id="rfooter">
                    Developed By: Shubham Kumar Gupta
                </div>
            </div>
        </div>
    </body>
</html>
