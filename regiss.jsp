<html>
<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    String rpass=request.getParameter("conf");
    
    
  Connection con;
  ResultSet re;
  PreparedStatement ps;
  try
{
 
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
   
   ps=con.prepareStatement("insert into registration values(?,?,?,?,?)");
   if(pass.equals(rpass))
   {
   ps.setString(1,fname);
   ps.setString(2,lname);
   ps.setString(3,email);
   ps.setString(4,pass);
   ps.setString(5,rpass);
   ps.executeUpdate();
   %>
     <script>
     alert("Registration Suucess !!");
     </script>    
     <%@include file="registrationuser1.html" %>
    <% } 
   else
    {%>
       <script>
     alert("Wrong Password... !!");
     </script>    
      <%@include file="registrationuser1.html" %>
    
     <%}
   }
catch(Exception e)
{
  out.println(e);
}
 %>

</html>
