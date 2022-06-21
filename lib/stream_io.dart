import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class FetchWSEvent{
  static const url = 'ws://localhost:8081';
  WebSocketChannel channel;
  FetchWSEvent({
    required this.channel,
  });
  listen() async{
    var message = channel.stream;
  }
  factory FetchWSEvent.connect(){
    return FetchWSEvent(channel: IOWebSocketChannel.connect(Uri.parse(url)));
  }
}
