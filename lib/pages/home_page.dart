import 'package:flutter/material.dart';
import 'package:flutter_app_one/widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalog App',
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Flutter"),
        ),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
    );
  }
}
