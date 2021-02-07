import 'package:flutter/material.dart';
import 'package:flutter_app_one/pages/login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
      initialRoute: "/login",
    );
  }
}
