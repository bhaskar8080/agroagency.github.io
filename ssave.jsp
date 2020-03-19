<html>
<%@ page language="java"%>
<%@ page import="java.sql.*" %>
<%
 int id=Integer.parseInt(request.getParameter("id"));
 String name=request.getParameter("fname");
 String sdate=request.getParameter("sdate");
 String edate=request.getParameter("edate");
 String no=request.getParameter("no");
 String na=request.getParameter("nationality");
 int que=Integer.parseInt(request.getParameter("que"));
   

 Connection con;
  Statement st;
  ResultSet re;
PreparedStatement ps;
  try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
ps=con.prepareStatement("insert into seed values(?,?,?,?,?,?,?)");
     ps.setInt(1,id);
     ps.setString(2,name);
     ps.setString(3,sdate);
     ps.setString(4,edate);
     ps.setString(5,no);
     ps.setString(6,na);
     ps.setInt(7,que);

   ps.executeUpdate();
%>
            <script>
     alert("Record Saved... !!");
     </script>    
  <%@include file="seed.html" %>
 
<%
 }
catch(ClassNotFoundException e)
{
response.sendRedirect("seed.html");
}
 %>
</html>
