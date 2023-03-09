<%@page import="Connect.DbManager"%>
<%
    //Java code to delete employee
    String empid=request.getParameter("empid");
    DbManager db=new DbManager();
    String query="delete from empinfo where empid='"+empid+"'";
    boolean res=db.insertUpdateDelete(query);
    if(res==true)
    {
    out.print("<script>alert('Record is deleted');window.location.href='../viewemployee.jsp';</script>");
    }
    else
    {
    out.print("<script>alert('Record is not deleted');window.location.href='../viewemployee.jsp';</script>");
    }
%>