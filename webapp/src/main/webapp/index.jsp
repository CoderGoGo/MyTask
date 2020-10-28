<h1> Hello form Denys </h1>
<h2> Learn Java with a mentor </h2>
import java.net.DatagramSocket;
import java.net.InetAddress;

try(final DatagramSocket socket = new DatagramSocket()){
  socket.connect(InetAddress.getByName("8.8.8.8"), 10002);
  ip = socket.getLocalAddress().getHostAddress();
}


