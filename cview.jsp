<html>
    <style>
       body{
            font-family: "Comic Sans MS",sans-serif;
        }
        table , th , td{
            border: 2px solid red;
            border-collapse: collapse;
            text-align: center;
            padding: 10px;
        }
        #custom thead{
            background-color:hsla(3,104%,61%,0.5); 
            color: white;
        }
    </style>    
<body bgcolor="white">
 <center>
     <table border="1"bgcolor="white" width="100%" id="custom">
         <thead>  
         <tr>
               <th>Customer id</th>
               <th>Customer Name</th>
               <th>Customer Address</th>
               <th>Phone No</th>
         </tr>
         </thead> 
<%@ page language="java"%>
<%@ page import="java.sql.*" %>
<%
 

 Connection con;
  Statement st;
  ResultSet rs;
  try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");st=con.createStatement();
  rs=st.executeQuery("select * from customer");
     while(rs.next())
       {%>
          
            <tr>
             
             <td><%out.println ( rs.getInt(1));   %> </td>
             <td><%out.println(rs.getString(2));  %></td>
             <td><%out.println(rs.getString(3));  %></td>
             <td><%out.println(rs.getString(4));   %></td>
       </tr>
  
   <%  }
 %>
    <br>welcome Good Customer.........</br>
<%
 }
catch(ClassNotFoundException e)
{
response.sendRedirect("customer.html");
}
 %>
</center>
</table>
</body>
</html>
