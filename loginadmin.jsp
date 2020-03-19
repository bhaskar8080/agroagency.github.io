<%@ page language="java"%>
<%

	try
	{
		String email=request.getParameter("username");
		String password=request.getParameter("password");
		if(email.equals("admin@gmail.com")&&password.equals("admin"))
		{
			response.sendRedirect("adminmain.html");
		}
		else
		{ %>
                <script>
                    alert("Login Fail...!!");
                   </script> 
                <%@include file="alogin.html" %>
              <% 		}
         	}
	catch (Exception e) 
	{
		out.println("exception.html");
	}
%>
