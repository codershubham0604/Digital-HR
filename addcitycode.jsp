<%@page import="Connect.DbManager"%>
<%
    //Here we write code to add city
    String cityname=request.getParameter("cityname");
    DbManager db=new DbManager();
    String query="insert into city(cityname) values('"+cityname+"')";
    boolean res=db.insertUpdateDelete(query);
    if(res==true)
    {
        out.print("<script>alert('City is added');window.location.href='../managecity.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('City is not added');window.location.href='../managecity.jsp';</script>");
    }
%>