import 'package:web_socket_channel/io.dart';
//import 'package:web_socket_channel/status.dart' as status;

class WebSocketToServer{
  List<String> messages = [];
  IOWebSocketChannel channel = IOWebSocketChannel.connect(Uri.parse('ws://localhost:8081'));

}