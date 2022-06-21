import 'package:flutter/material.dart';
import 'package:twitter_flutter/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "main_page": (context) => MainPage(),
        "message_page": (context) => MessagePage(),
      },
    );
  }
}
