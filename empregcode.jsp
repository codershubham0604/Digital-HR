<%@page import="Connect.DbManager"%>
<%
    //Code for Employee Registration
    String empid=request.getParameter("empid");
    String empname=request.getParameter("empname");
    String fname=request.getParameter("fname");
    String mname=request.getParameter("mname");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String city=request.getParameter("city");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String department=request.getParameter("department");
    String designation=request.getParameter("designation");
    String dob=request.getParameter("dob");
    String doj=request.getParameter("doj");
    int salary=Integer.parseInt(request.getParameter("salary"));
    DbManager db=new DbManager();
    String query="insert into empinfo values('"+empid+"','"+empname+"','"+fname+"','"+mname+"','"+gender+"','"+address+"','"+city+"','"+contactno+"','"+emailaddress+"','"+department+"','"+designation+"','"+dob+"','"+doj+"','"+salary+"')";
    boolean res=db.insertUpdateDelete(query);
    if(res==true)
    {
        out.print("<script>alert('Registration is done');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Registration is not done');window.location.href='../adminhome.jsp';</script>");
    }
%>