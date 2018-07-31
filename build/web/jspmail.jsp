<%@page import="java.util.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%
	// requires mail.jar
	Properties props = new Properties();
	props.put("mail.smtp.host", "smtp server ip or url");
	Session s = Session.getInstance(props, null);
	MimeMessage message = new MimeMessage(s);
	InternetAddress from = new InternetAddress("kafle.sunil9@gmail.com");
	message.setFrom(from);
	InternetAddress to = new InternetAddress("kafle.sunil9@hotmail.com");
	message.addRecipient(Message.RecipientType.TO, to);
	message.setSubject("test subject");
	message.setText("test text");
	Transport.send(message);
%>
<html>
	<head>
		<title>jsp mail test</title>
	</head>
	<body>
		<p>
			A Message has been sent. <br>
			Check your inbox.
		</p>
	</body>
</html>