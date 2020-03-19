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
<marquee><h1><font color="blue">Welcome To Krishi Agro Agency</font></h1></marquee>
 <center>
     <table border="1"bgcolor="white"width="100%"id="custom">
         <thead>   
         <tr>
               <th>Medicin Name</th>
               <th>Exp.Date</th>
               <th>Package</th>
               <th>Nationality</th>
               <th>Quantity</th>
               <th>Prize(per quantity)</th>
               
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
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
st=con.createStatement();
  rs=st.executeQuery("select * from medicin");
     while(rs.next())
       {%>
          
            <tr>
             
           <td>  <% out.println(rs.getString(2)); %> </td>
           <td>  <% out.println(rs.getString(3)); %> </td>
           <td>  <% out.println(rs.getString(4)); %> </td>
           <td>  <% out.println(rs.getString(5)); %> </td>
           <td>  <% out.println( rs.getInt(6));  %> </td>
            <td> <% out.println( rs.getInt(1)); %>Rs </td>
                  
       </tr>
  
   <%  }
 %>
<%
 }
catch(ClassNotFoundException e)
{
response.sendRedirect("medicine.html");
}
 %>
</center>
</table>
</body>
</html>
