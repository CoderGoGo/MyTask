<h1> Hello form Denys </h1>
<h2> Learn Java with a mentor </h2>
<h2> Server ip is </h2>
HttpRequest request = HttpRequest.newBuilder()
    .uri(URI.create("http://icanhazip.com"))
    
String serverIP = request.getLocalAddr();
