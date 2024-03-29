import 'dart:async';
import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:millionaire/repository/remote/websocket_handler.dart';
import 'package:web_socket_channel/io.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isSigned= false;
  String username="";
  String password="";
  List<String> messages = [];
  void signing(){
    Navigator.of(context).pop();
    if(isSigned) {
      Navigator.pushNamed(context, "/gamePage");
    }
  }
  Future<void> signIn() async {
    //http request は後ほど作る
    // !!!! Android Emulator のストループバックインターフェイスは
    // http://10.0.2.2 NOT http://127.0.0.1:8000
    Uri url = Uri.parse('http://127.0.0.1:8000/login/');
    Map<String, String> userInfo = {
      'username': username,
      'password': password,
    };
    final response = await http.post(url, body: userInfo)
        .timeout(const Duration(seconds: 5),
          onTimeout: (){return Future(() => http.Response("", 504));});
    if(response.statusCode == 200) {
      Map<String, dynamic> responseJson = jsonDecode(response.body);
      isSigned = true;
      print(response.body.toString());
      // will be recycled
      final url = Uri.parse(responseJson['server']! + responseJson['token']!);
      print(url);
      var channel = IOWebSocketChannel.connect(url);
      //var webSocketHandler = WebSocketHandler(channel: channel);
      //await webSocketHandler.listen();
    }
    print(response.statusCode.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'username'),
            onChanged: (value){
              setState((){username = value;});
            },
          ),
          //const SizedBox(height: 8),
          TextFormField(
            autovalidateMode: AutovalidateMode.always,
            decoration: const InputDecoration(labelText: 'password'),
            obscureText: true,
            onChanged: (value){
              setState((){password = value;});
            },
            validator: (String? value) {
              return (value != null && value.contains('@',)) ? 'Do not use the @ char.' : null;
            },
          ),
          //const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () async{
              Navigator.pushNamed(context, "/loading");
              await signIn();
              signing();
              },
            child: const Text("ユーザー登録"),
          ),
        ],
      ),
    );
  }
}
