import 'package:flutter/material.dart';


class CardWidget extends StatefulWidget {
  const CardWidget(this.cardNum);
  final String cardNum;

  @override
  State<CardWidget> createState() => _CardWidgetState(cardNum);
}

class _CardWidgetState extends State<CardWidget> {

  _CardWidgetState(this.cardNum);
  final String cardNum;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 50,
      child: Container(
        //padding: const EdgeInsets.all(5),
        color: Colors.blue,
        padding: EdgeInsets.all(10),
        child: Text(cardNum),
      ),
    );
  }
}

