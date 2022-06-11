import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username="";
  String password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'username'),
            onChanged: (value){
              setState((){
                username = value;
              });
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
            onPressed: () async {
              //http request は後ほど作る
              // !!!! Android Emulator のストループバックインターフェイスは
              // http://10.0.2.2 NOT http://127.0.0.1:8000
              var url = Uri.parse('http://10.0.2.2:8000/login/');
              Map<String, String> userInfo = {
                'username': username,
                'password': password,
              };
              var response = await http.post(url, body: userInfo);
              print(response.toString());
            },
            child: Text("ユーザー登録"),
          ),
        ],
      ),
    );
  }
}
