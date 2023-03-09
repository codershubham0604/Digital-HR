<%@page import="Connect.DbManager"%>
<%
    //Here we write code to delete city
    String cityid=request.getParameter("cityid");
    String query="delete from city where cityid='"+cityid+"'";
    DbManager db=new DbManager();
    boolean res=db.insertUpdateDelete(query);
    if(res==true)
    {
        out.print("<script>alert('City is deleted');window.location.href='../managecity.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('City is not deleted');window.location.href='../managecity.jsp';</script>");
    }
%>