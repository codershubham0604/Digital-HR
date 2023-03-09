<%@page import="Connect.DbManager"%>
<%
    //Delete the record of job seeker
    DbManager db=new DbManager();
    String emailaddress=request.getParameter("emailaddress");
    String query="delete from jobseeker where emailaddress='"+emailaddress+"'";
    boolean res=db.insertUpdateDelete(query);
    if(res==true)
    {
        out.print("<script>alert('Record is deleted');window.location.href='../jobseeker.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Record is not deleted');window.location.href='../jobseeker.jsp';</script>");
    }
%>