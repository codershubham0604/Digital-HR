<%-- 
    Document   : adminhome
    Created on : Aug 8, 2020, 10:52:38 AM
    Author     : Shubham
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connect.DbManager"%>
<%
    if(session.getAttribute("userid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/adminstyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body bgcolor="green">
        <div id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo.png" width="150" height="150"/>
                </div>
                <div id="title">
                    Welcome to admin zone.
                </div>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="adminhome.jsp">Home</a></li>
                    <li><a href="employee.jsp">Employee</a></li>
                    <li><a href="jobseeker.jsp">Job Seeker</a></li>
                    <li><a href="enquirymgmt.jsp">Enquiry</a></li>
                    <li><a href="changepwd.jsp">Change Password</a></li>
                    <li><a href="managecity.jsp">City</a></li>
                    <li><a href="managequalification.jsp">Qualification</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div>
            <div id="main">
                <h1 style="color:blue;text-align:center;">
                    Employee Registration Form
                </h1>
                <form action="admincode/empregcode.jsp" method="post">
                    <table style="width:60%;margin:0 auto;">
                        <tr>
                            <td>Enter Employee Id</td>
                            <td>
                                <input type="text" name="empid" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Employee Name</td>
                            <td>
                                <input type="text" name="empname" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Father Name</td>
                            <td>
                                <input type="text" name="fname" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Mother Name</td>
                            <td>
                                <input type="text" name="mname" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Select The Gender</td>
                            <td>
                                <input type="radio" name="gender" value="Male"/>Male
                                <input type="radio" name="gender" value="Female"/>Female
                            </td>
                        </tr>
                        <tr>
                            <td>Enter The Address</td>
                            <td>
                                <textarea name="address" rows="5" cols="30" style="resize:none;"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>Select City</td>
                            <td>
                                <select name="city">
                                    <option>Select City</option>
                                    <%
                                        DbManager db=new DbManager();
                                        ResultSet rs=db.selectData("select cityname from city");
                                        while(rs.next())
                                        {                                    %>
                                      <option><%=rs.getString(1)%></option>
                                     <% } %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Contact No</td>
                            <td>
                                <input type="text" name="contactno" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Email Address</td>
                            <td>
                                <input type="email" name="emailaddress" required/> 
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Department</td>
                            <td>
                                <input type="text" name="department" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Designation</td>
                            <td>
                                <input type="text" name="designation" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Date Of Birth</td>
                            <td>
                                <input type="date" name="dob" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Date Of Joining</td>
                            <td>
                                <input type="date" name="doj" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Salary</td>
                            <td>
                                <input type="number" name="salary" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="viewemployee.jsp">Manage Employee</a>
                            </td>
                            <td>
                                <input type="submit" value="Save"/>
                            </td>
                        </tr>
                    </table>
                </form>
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
<% } %>