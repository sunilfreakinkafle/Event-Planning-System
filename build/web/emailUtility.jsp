<html>
<head>
<title>email utility</title>
</head>
<body>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>


<%
String host = "smtp.gmail.com";
String to = request.getParameter("to");    

String from = request.getParameter("from");

String subject = request.getParameter("subject");

String messageText = request.getParameter("messageText");

boolean sessionDebug = false;
// Create some properties and get the default Session.
Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol", "smtp");
props.setProperty("mail.transport.protocol", "smtp");     
props.setProperty("mail.host", "smtp.gmail.com");  
props.put("mail.smtp.auth", "true");  
props.put("mail.smtp.port", "8080");  
props.put("mail.debug", "true");  
props.put("mail.smtp.socketFactory.port", "8080");  
props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");  
props.put("mail.smtp.socketFactory.fallback", "false"); 

 Session mailSession = Session.getInstance(props,
    new javax.mail.Authenticator(){
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(
            "Kingambition12@gmail.com", "king@mbition1234");// Specify the Username and the PassWord
        }
  });
 // Set debug on the Session
 // Passing false will not echo debug info, and passing True will.

 mailSession.setDebug(sessionDebug);

// Instantiate a new MimeMessage and fill it with the
// required information.

Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setSentDate(new Date());
msg.setText(messageText);

// Hand the message to the default transport service
// for delivery.

Transport.send(msg);
out.println("Mail was sent to " + to);
out.println(" from " + from);
out.println(" using host " + host + ".");
%>

</body>
</html>