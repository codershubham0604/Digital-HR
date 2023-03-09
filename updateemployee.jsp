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
                    Edit Employee Information
                </h1>
                <form action="admincode/updateemployeecode.jsp" method="post">
                    <%
                        String empid=request.getParameter("empid");
                        DbManager db=new DbManager();
                        String query="select * from empinfo where empid='"+empid+"'";
                        ResultSet rs=db.selectData(query);
                        if(rs.next())
                        {
                    %>
                    <table style="width:60%;margin:0 auto;">
                        <tr>
                            <td>Employee Id</td>
                            <td>
                                <input type="text" name="empid" value="<%=rs.getString(1)%>" readonly/>
                            </td>
                        </tr>
                        <tr>
                            <td>Employee Name</td>
                            <td>
                                <input type="text" name="empname" value="<%=rs.getString(2)%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Father Name</td>
                            <td>
                                <input type="text" name="fname" value="<%=rs.getString(3)%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Mother Name</td>
                            <td>
                                <input type="text" name="mname" value="<%=rs.getString(4)%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td>
                                <input type="text" name="gender" value="<%=rs.getString(5)%>" readonly/>
                            </td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td>
                                <textarea name="address" rows="5" cols="30" style="resize:none;"><%=rs.getString(6)%></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>City</td>
                            <td>
                                <input type="text" name="city" value="<%=rs.getString(7)%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Contact No.</td>
                            <td>
                                <input type="text" name="contactno" value="<%=rs.getString(8)%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Email Address</td>
                            <td>
                                <input type="text" name="emailaddress" value="<%=rs.getString(9)%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Department</td>
                            <td>
                                <input type="text" name="department" value="<%=rs.getString(10)%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Designation</td>
                            <td>
                                <input type="text" name="designation" value="<%=rs.getString(11)%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Date Of Birth</td>
                            <td>
                                <input type="text" name="dob" value="<%=rs.getString(12)%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Date Of Joining</td>
                            <td>
                                <input type="text" name="doj" value="<%=rs.getString(13)%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Salary</td>
                            <td>
                                <input type="number" name="salary" value="<%=rs.getString(14)%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <input type="submit" value="Update"/>
                            </td>
                        </tr>
                    </table>
                    <%  } %>
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