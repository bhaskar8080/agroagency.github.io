<html>
<%@ page language="java"%>
<%@ page import="java.sql.*" %>
<%
  String name=request.getParameter("fname");
 

 Connection con;
  Statement st;
  ResultSet rs;
  try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
st=con.createStatement();
  rs=st.executeQuery("select * from fertilize where name='"+name+"'");
     while(rs.next())
       {
           out.println("Fertilize id:- "+rs.getInt(1)+"<br>Name:- "+rs.getString(2)+"<br>Date:- "+rs.getString(3)+"<br>Package ML:- "+rs.getString(4)+"<br>Nationality : - "+rs.getString(5)+"<br>Quantity :- "+rs.getInt(6));
      }
 %>
    <br>welcome.........</br>
<%
 }
catch(ClassNotFoundException e)
{
response.sendRedirect("frame.html");
}
 %>

</html>
