<html>
<%@ page language="java"%>
<%@ page import="java.sql.*" %>
<%
 int no=Integer.parseInt(request.getParameter("id"));
 String first=request.getParameter("fname");
 String add=request.getParameter("address");
 String pno=request.getParameter("no");

 Connection con;
  Statement st;
  ResultSet re;
  try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
st=con.createStatement();
st.executeUpdate("insert into customer values("+no+",'"+first+"','"+add+"','"+pno+"')");
%>
      <script>
     alert("Record Save... !!");
     </script>    
  <%@include file="customer.html" %>
  
<%
 }
catch(ClassNotFoundException e)
{
response.sendRedirect("customer.html");
}
 %>

</html>
