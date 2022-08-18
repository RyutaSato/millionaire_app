import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:millionaire/view/loading/loading_page.dart';
import 'package:millionaire/view/signin/login_page.dart';
import 'package:millionaire/view/game/on_game_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((value) =>
      runApp(
        const ProviderScope(child: MyApp(),)
    ),
  );
   //runApp(const MyApp());
}

Map<String, WidgetBuilder> routes = {
  "/loginPage": (context) => const LoginPage(),
  "/gamePage": (context) => const OnGamePage(),
  "/loading": (context) => LoadingPage()
};

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: routes,
      home: const LoginPage(),
      initialRoute: "/loginPage",
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
    );
  }
}


