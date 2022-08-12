import '../lib/api/websocket_handler.dart';
void main() {
  String message1;
  message1 = """{
  "version": "0.0.1",
  "status": "normal",
  "server_time": "2022-06-23 15:46:59.063222+09:00",
  "body": [
    {
      "command": {
        "play": {
          "submit": [
            "sp1",
            "di1"
          ],
          "option": "pullout",
          "target_from": "uid0",
          "target_to": [
            "uid1",
            "uid2"
          ],
          "allowed_time": 20
        }
      }
    }
  ]
}""";
  print(message1);
  var parser = ResponseModelFromServer(message:message1);
  print(parser.serverTime.toLocal());
  print(parser.duration.inDays);
}