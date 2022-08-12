import '../card.dart';

class CardInfo{
  late String id;
  late Suite suite;
  late Card card;
  ActionInfo({required Map<String, dynamic> body}){
    action = body[""];
    switch(action){
      case "submit":
        submit = body["body"];
        break;
      default:
        throw Exception("Not found action in ActionInfo");
    }
  }
}