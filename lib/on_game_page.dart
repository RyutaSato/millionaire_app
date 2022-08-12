import 'package:flutter/material.dart';

import 'card_component.dart';

class OnGamePage extends StatefulWidget {
  const OnGamePage({Key? key}) : super(key: key);

  @override
  State<OnGamePage> createState() => _OnGamePage();
}

class _OnGamePage extends State<OnGamePage> {
  Iterable<Widget> cardIterable(int n) sync*{
    for(int i=0; i < n; i++){
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
              for(final card in cardIterable(10))
                Padding(padding: const EdgeInsets.all(5), child: card,)
            ],
          ),
        ],
      ),
    );
  }
}