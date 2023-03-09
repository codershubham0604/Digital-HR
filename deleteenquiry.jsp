<%@page import="Connect.DbManager"%>
<%
    //Code to delete enquiry
    String id=request.getParameter("id");
    String query="delete from enquiry where id='"+id+"'";
    DbManager db=new DbManager();
    boolean res=db.insertUpdateDelete(query);
    if(res==true)
    {
        out.print("<script>alert('Enquiry is deleted');window.location.href='../enquirymgmt.jsp';</script>");
    }
    else
    {
     out.print("<script>alert('Enquiry is not deleted');window.location.href='../enquirymgmt.jsp';</script>");
    }
%>