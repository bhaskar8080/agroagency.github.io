<html>
<%@ page language="java"%>
<%@ page import="java.sql.*" %>
<%
  int no=Integer.parseInt(request.getParameter("id"));
 

 Connection con;
  Statement st;
  ResultSet rs;
  try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
st=con.createStatement();
  rs=st.executeQuery("select * from customer where id="+no+"");
     while(rs.next())
       {
           out.println("Customer id:- "+rs.getInt(1)+"<br>  name:- "+rs.getString(2)+"<br> Address:- "+rs.getString(3)+"<br> Phone no :- "+rs.getString(4));
      }
 %>
    <br>welcome.........</br>
<%
 }
catch(ClassNotFoundException e)
{
response.sendRedirect("customer.html");
}
 %>

</html>
