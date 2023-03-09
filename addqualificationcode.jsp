<%@page import="Connect.DbManager"%>
<%
    //Here we write code to add qualification
    String qname=request.getParameter("qname");
    String query="insert into qualification(qname) values('"+qname+"')";
    DbManager db=new DbManager();
    boolean res=db.insertUpdateDelete(query);
    if(res==true)
    {
        out.print("<script>alert('Qualification is added');window.location.href='../managequalification.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Qualification is not added');window.location.href='../managequalification.jsp';</script>");
    }
%>