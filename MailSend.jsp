
<%@  page language="java" import="java.io.*" import="java.util.*" import="javax.mail.*" import="javax.mail.internet.*" import="java.sql.*" %>

<html>
<body>

<%!
public class s 
{ 
    public  void send(String to, String sub, String msg, final String user,final String pass)
    { 
        
     Properties props = new Properties();
    
     props.put("mail.smtp.host", "smtp.gmail.com");
     props.put("mail.smtp.port", "587");		
     props.put("mail.smtp.auth", "true");
     props.put("mail.smtp.starttls.enable", "true");
     

    Session session = Session.getInstance(props,new javax.mail.Authenticator()
    {
  	  protected PasswordAuthentication getPasswordAuthentication() 
  	  {
  	 	 return new PasswordAuthentication(user,pass);
  	  }
   });
    
   try
   {
 
 
    MimeMessage message = new MimeMessage(session);
       message.setFrom(new InternetAddress(user));
       message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
       message.setSubject(sub);
       message.setText(msg);

       Transport.send(message);
 
    }
    catch(Exception e)
    {}
  }  
}
%>

<%
            String to=("esales9797@gmail.com");
        String subject=request.getParameter("subject");
        String message=request.getParameter("massage");
        String user=request.getParameter("email");
        String pass=request.getParameter("password");
          s s1=new s();
          s1.send(to,subject,message,user,pass);
          
  %>
        <script>
     alert("Send success... !!");
     </script>    
  <%@include file="main11.html" %>

</body>
</html>