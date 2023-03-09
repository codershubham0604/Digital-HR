<%@page import="Connect.DbManager"%>
<%
//Here we write code to update employee
String empid=request.getParameter("empid");
String empname=request.getParameter("empname");
String fname=request.getParameter("fname");
String mname=request.getParameter("mname");
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
String query="update empinfo set empname='"+empname+"',fname='"+fname+"',mname='"+mname+"',address='"+address+"',city='"+city+"',contactno='"+contactno+"',emailaddress='"+emailaddress+"',department='"+department+"',designation='"+designation+"',dob='"+dob+"',doj='"+doj+"',salary='"+salary+"' where empid='"+empid+"'";
boolean res=db.insertUpdateDelete(query);
if(res==true)
{
    out.print("<script>alert('Record is updated');window.location.href='../viewemployee.jsp';</script>");
}
else
{
    out.print("<script>alert('Record is not updated');window.location.href='../viewemployee.jsp';</script>");
}
%>