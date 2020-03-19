<%@ page language="java" import="java.sql.*"%>
<%!
     int x=0;
%>  
<%

  String uname=request.getParameter("email");
  String pass=request.getParameter("pass");
  
  session.setAttribute("user",uname);

  Connection con;
  Statement st;
  ResultSet rs;
  try
  {
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
st=con.createStatement();
 
  rs=st.executeQuery("select * from registration");

    while(rs.next())
     {
        if(rs.getString(3).equals(uname) && rs.getString(4).equals(pass))      
          x=1;    
     } 
        if(x==1)
          { %>
           <script>
            alert("Login Suucess !!");
            </script>
             <%@include file="purchase.html" %>
            <%    
           }
          else
          { %>
              <script>
            alert("Login Fail !!");
            </script>    
             <%@include file="loginuser.html" %>
         <%
          }
             con.close();         
  }
  catch(Exception e)
  {
    out.println(e);
  }
  
 %>
