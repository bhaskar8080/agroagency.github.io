<html>
<%@ page language="java"%>
<%@ page import="java.sql.*" %>
<%
 int id=Integer.parseInt(request.getParameter("id"));
 String name=request.getParameter("fname");
 String date=request.getParameter("date");
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
ps=con.prepareStatement("insert into medicin values(?,?,?,?,?,?)");
     ps.setInt(1,id);
     ps.setString(2,name);
     ps.setString(3,date);
     ps.setString(4,no);
     ps.setString(5,na);
     ps.setInt(6,que);
   ps.executeUpdate();
%>
     <script>
     alert("Record Saved... !!");
     </script>    
  <%@include file="medicine.html" %>
<%
 }
catch(ClassNotFoundException e)
{
response.sendRedirect("fertilize.html");
}
 %>
</html>
