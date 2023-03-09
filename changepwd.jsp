<%-- 
    Document   : adminhome
    Created on : Aug 8, 2020, 10:52:38 AM
    Author     : Shubham
--%>
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
                <h1 style="text-align:center;color:blue;">
                    Change Password
                </h1>
                <form action="admincode/changepwdcode.jsp" method="post">
                    <table style="width:60%;margin:0 auto;">
                        <tr>
                            <td>Enter Old Password</td>
                            <td>
                                <input type="password" name="oldpassword" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter New Password</td>
                            <td>
                                <input type="password" name="newpassword" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Confirm Password</td>
                            <td>
                                <input type="password" name="confirmpassword" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <input type="submit" value="Change Password"/>
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