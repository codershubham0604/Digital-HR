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
                    City Management
                </h1>
                <form action="admincode/addcitycode.jsp" method="post">
                    <table style="width:60%;margin:0 auto;">
                        <tr>
                            <td>
                                Enter City Name
                            </td>
                            <td>
                                <input type="text" name="cityname" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <input type="submit" value="Add City"/>
                            </td>
                        </tr>
                    </table>
                    <br/><br/>
                    <table style="margin:0 auto;width:60%" border="1">
                        <tr>
                            <td>City Id</td>
                            <td>City Name</td>
                            <td>Delete</td>
                        </tr>
                        <%
                            DbManager db=new DbManager();
                            String query="select * from city";
                            ResultSet rs= db.selectData(query);
                            while(rs.next())
                            {
                        %>
                        <tr>
                            <td><%=rs.getString(1)%></td>
                            <td><%=rs.getString(2)%></td>
                            <td>
                                <a href="admincode/deletecitycode.jsp?cityid=<%=rs.getString(1)%>">Delete</a>
                            </td>
                        </tr>
                         <% } %>
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