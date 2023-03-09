<%@page import="java.sql.ResultSet"%>
<%@page import="Connect.DbManager"%>
<%
    //Receieve the values
    String userid=request.getParameter("userid");
    String password=request.getParameter("password");
    DbManager db=new DbManager();
    String query="select password from adminlogin where userid='"+userid+"'";
    ResultSet rs=db.selectData(query);
    if(rs.next())
    {
        String respassword=rs.getString(1);
        if(password.equals(respassword))
        {
            session.setAttribute("userid", userid);
            response.sendRedirect("../adminzone/adminhome.jsp");
        }
        else
        {
            out.print("<script>alert('Invalid User');window.location.href='../login.jsp';</script>");
        }
    }
    else
    {
    out.print("<script>alert('Userid does not exists');window.location.href='../login.jsp';</script>");
    }
%>