
import 'package:flutter/material.dart';

import 'card_component.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final cardNum = 12;
  Iterable<Widget> cardIterable(cardNum) sync*{
    for(int i=0; i < cardNum; i++){
      yield CardWidget('$i');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              for(final card in cardIterable(cardNum))
                SizedBox(
                  width: MediaQuery.of(context).size.width/cardNum,
                  child: Padding(padding: const EdgeInsets.all(5), child: card,),
                )
            ],
          ),
        ],
      ),
    );
  }
}
