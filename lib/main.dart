import 'package:flutter/material.dart';
import 'package:flutter_app_one/utils/routes.dart';
import 'package:flutter_app_one/widgets/my_app_theme.dart';

import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyAppTheme.lightTheme(context),
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
      initialRoute: MyRoutes.homeRoute,
    );
  }
}
