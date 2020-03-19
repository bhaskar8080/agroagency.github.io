<html>
<%@ page language="java"%>
<%@ page import="java.sql.*" %>
<%

 int no=Integer.parseInt(request.getParameter("id"));
 String first=request.getParameter("fname");
 String add=request.getParameter("address");
 String pno=request.getParameter("no");
 
  PreparedStatement ps;
  Connection con;
  Statement st;
  ResultSet re;
  try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
st=con.createStatement();
String s="update customer set no=?,first=?,add=?,pno=? where id=?";
 ps=con.prepareStatement(s);
   ps.setInt(1,no);
   ps.setString(2,first);
   ps.setString(3,add);
   ps.setString(4,pno);
  %>
     <script>
     alert("Record Updated... !!");
     </script>    
  <%@include file="customer.html" %>
<%
 }                                                                                    
catch(ClassNotFoundException e)
{
response.sendRedirect("frame.jsp");
}
 %>

</html>
