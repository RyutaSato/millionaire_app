import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web_socket_channel/io.dart';
// import 'package:web_socket_channel/status.dart' as status;
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';

// DUPLICATED
//import '../model/action_info.dart';
/*
class WebSocketHandler{
  static const url = 'ws://localhost:8081'; // fetch from login response
  //final String token;
  WebSocketChannel channel;
  WebSocketHandler({
    //required this.token,
    required this.channel,
  });
  listen() async{
    var message = channel.stream;
    print(message.toString());
  }
  //
  // factory WebSocketHandler.connect(String token){
  //   return WebSocketHandler(channel: IOWebSocketChannel.connect(Uri.parse(url + '?' + token)));
  // }
}

 */
//FUTURE DEPRECATION Instant class
class ActionInfo{
  final Map<String, dynamic> body;

  ActionInfo({required this.body});
}
// DEPRECATED
// TODO: Refactor Freezed Model
class ResponseModelFromServer{
// [MUST] This class must not be changed in the future.
  final String message;
  late String version;
  late String socketNumber;
  late DateTime serverTime;
  late Duration duration;
  late Map<String, dynamic> body;
  late String command;
  late ActionInfo _actionInfo;
  ResponseModelFromServer({required this.message}){
    Map<String, dynamic> jsonData = jsonDecode(message);
    try {
      version = jsonData['version'];
      // socket_number が連続していない場合は，盤面に関するリクエストを要求する．
      socketNumber = jsonData['socket_number'];
      // DateTime.parse or DateTime.tryparse
      serverTime = DateTime.parse(jsonData["server_time"]!);
      duration = DateTime.now().difference(serverTime);
      command = jsonData["command"];
      body = jsonData["body"];
      switch(command){
        case "action":
          _actionInfo = ActionInfo(body: body);
          break;
        default:
          throw const FormatException("Not found command in JSON data");
      }
    }
    on TypeError catch(e){
      print("MessageToJson class 例外$e");
    }
  }
  
}

class StreamWebSocket{
  String url;
  StreamWebSocket(this.url);
  IOWebSocketChannel connect() => IOWebSocketChannel.connect(url);
  Stream<AutoDisposeStreamProvider<ResponseModelFromServer>> webSocketProvider() async*{
    yield StreamProvider.autoDispose<ResponseModelFromServer>((ref) async* {
      final channel = connect();
      ref.onDispose(() => channel.sink.close());
      await for (final value in channel.stream) {
        yield ResponseModelFromServer(message: value.toString());
      }
    });
  }

}
