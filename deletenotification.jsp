<%@page import="Connect.DbManager"%>
<%
    //Here we write code to delete notification
    String id=request.getParameter("id");
    String query="delete from notification where id='"+id+"'";
    DbManager db=new DbManager();
    boolean res=db.insertUpdateDelete(query);
    if(res==true)
    {
        out.print("<script>alert('Notification is deleted');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
    out.print("<script>alert('Notification is not deleted');window.location.href='../adminhome.jsp';</script>");
    }
%>