<%@page import="Connect.DbManager"%>
<%
    //Here we write code to change the admin password
    String oldpassword=request.getParameter("oldpassword");
    String newpassword=request.getParameter("newpassword");
    String confirmpassword=request.getParameter("confirmpassword");
    String userid=session.getAttribute("userid").toString();
    if(newpassword.equals(confirmpassword))
    {
        //Change Password Code
        DbManager db=new DbManager();
        String query="update adminlogin set password='"+newpassword+"' where userid='"+userid+"' and password='"+oldpassword+"'";
        boolean res=db.insertUpdateDelete(query);
        if(res==true)
        {
            out.print("<script>alert('Password is changed');window.location.href='../logout.jsp';</script>");
        }
        else
        {
            out.print("<script>alert('Password is not changed');window.location.href='../changepwd.jsp';</script>");
        }
    }
    else
    {
        out.print("<script>alert('Password is not matched');window.location.href='../changepwd.jsp';</script>");
    }
%>