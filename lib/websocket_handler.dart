import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketHandler{
  static const url = 'ws://localhost:8081'; // fetch from login response
  WebSocketChannel channel;
  WebSocketHandler({
    required this.channel,
  });
  listen() async{
    var message = channel.stream;
  }
  factory WebSocketHandler.connect(){
    return WebSocketHandler(channel: IOWebSocketChannel.connect(Uri.parse(url)));
  }
}
