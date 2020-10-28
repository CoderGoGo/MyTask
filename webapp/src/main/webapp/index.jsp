<h1> Hello form Denys </h1>
<h2> Learn Java with a mentor </h2>
<h2> Server ip is </h2>
HttpRequest request = HttpRequest.newBuilder()
    .uri(URI.create("http://icanhazip.com"))
    .build();


<html>
<head>
<title>Hello World!</title>
</head>
<body>
	<h1>Hello World! It's work !WOW!</h1>
	<h1>JS-APP-1</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>
