class ActionInfo{
  late String action;
  late String submit;
  late String card;
  ActionInfo({required Map<String, dynamic> body}){
    action = body["action"];
    switch(action){
      case "submit":
        submit = body["body"];
        break;
      default:
        throw Exception("Not found action in ActionInfo");
    }
  }
}