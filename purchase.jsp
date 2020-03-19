<%@ page import="java.sql.*"%>

<%!
Connection con;
PreparedStatement ps;
ResultSet rs;
String url;
int i;
%>

<%
	String cname=request.getParameter("cname");
	String address=request.getParameter("address");
	String mobile=request.getParameter("mobile");
	String adhar=request.getParameter("adhar");
	String product=request.getParameter("product");
	int quantity=Integer.parseInt(request.getParameter("quantity"));
	String date=request.getParameter("date");

	Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/krishi","root","");
    ps=con.prepareStatement("insert into purchase values(?,?,?,?,?,?,?)");
	    ps.setString(1,cname);
	    ps.setString(2,address);
        ps.setString(3,mobile);
        ps.setString(4,adhar); 
        ps.setString(5,product); 
        ps.setInt(6,quantity);
        ps.setString(7,date);
	
        i=ps.executeUpdate();
	if(i>0)
        {   %>
             <script>
              alert("Your order is confim... !!");
             </script>    
             <%@include file="purchase.html" %>
         <%}
          else{
           %>
        <script>
         alert("Your order not send... !!");
        </script>    
        <%@include file="purchase.html" %>
        <%
	 }
         con.close();	
        %>