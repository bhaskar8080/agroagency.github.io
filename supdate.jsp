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
 String que=request.getParameter("que");
 
  PreparedStatement ps;
  Connection con;
  Statement st;
  ResultSet re;
  try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
st=con.createStatement();
String s="update seed set id=?,name=?,sdate=?,edate=?,no=?,na=?,que=? where name='"+name+"'";
 ps=con.prepareStatement(s);
     ps.setInt(1,id);
     ps.setString(2,name);
     ps.setString(3,sdate);
     ps.setString(4,edate);
     ps.setString(5,no);
     ps.setString(6,na);
     ps.setString(7,que);
  %>
        <script>
     alert("Record Updated... !!");
     </script>    
  <%@include file="seed.html" %>
 <%
 }                                                                                    
catch(ClassNotFoundException e)
{
response.sendRedirect("frame.jsp");
}
 %>

</html>
