import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter One'),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
