<html>
<%@ page language="java"%>
<%@ page import="java.sql.*" %>
<%
  String name=request.getParameter("fname");
 
 Connection con;
  Statement st;
  ResultSet re;
  try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
st=con.createStatement();
st.executeUpdate("delete from medicin where name='"+name+"'");
    %>
    <script>
     alert("Record Deleted... !!");
     </script>    
  <%@include file="medicine.html" %>
  
<%
 }
catch(ClassNotFoundException e)
{
response.sendRedirect("customer.html");
}
 %>

</html>
