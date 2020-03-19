<html>
<%@ page language="java"%>
<%@ page import="java.sql.*" %>
<%
  int no=Integer.parseInt(request.getParameter("id"));
 
 Connection con;
  Statement st;
  ResultSet re;
  try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");st=con.createStatement();
st.executeUpdate("delete from customer where id="+no);
   %>
    <script>
     alert("Record Deleted... !!");
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
