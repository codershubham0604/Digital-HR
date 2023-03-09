<%@page import="Connect.DbManager"%>
<%
//Here we write code to delete qualification
String qid=request.getParameter("qid");
String query="delete from qualification where qid='"+qid+"'";
DbManager db=new DbManager();
boolean res=db.insertUpdateDelete(query);
if(res==true)
{
    out.print("<script>alert('Record is deleted');window.location.href='../managequalification.jsp';</script>");
}
else
{
    out.print("<script>alert('Record is not deleted');window.location.href='../managequalification.jsp';</script>");
}
%>