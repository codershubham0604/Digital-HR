<%@page import="Connect.DbManager"%>
<%
    //Recieve the values
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String city=request.getParameter("city");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String qualification=request.getParameter("qualification");
    String experience=request.getParameter("experience");
    String companyname=request.getParameter("companyname");
    String keyskills=request.getParameter("keyskills");
    DbManager db=new DbManager();
    String query="insert into jobseeker values('"+name+"','"+gender+"','"+address+"','"+city+"','"+contactno+"','"+emailaddress+"','"+qualification+"','"+experience+"','"+companyname+"','"+keyskills+"')";
    boolean res=db.insertUpdateDelete(query);
    if(res==true)
    {
    out.print("<script>alert('Registration is done.');window.location.href='../index.jsp';</script>");
    }
    else
    {
     out.print("<script>alert('Registration is not done.');window.location.href='../index.jsp';</script>");
    }
    
%>