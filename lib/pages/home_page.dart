import 'package:flutter/material.dart';
import 'package:flutter_app_one/modals/catalog.dart';
import 'package:flutter_app_one/widgets/item_widget.dart';
import 'package:flutter_app_one/widgets/my_drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final dummyList = List.generate(50, (index) => CatalogModel.products[0]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Catalog App',
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemBuilder: (context, index) => ItemWidget(
            item: dummyList[index],
          ),
          itemCount: dummyList.length,
        ),
      ),
      drawer: Drawer(
        child: MyDrawer(),
      ),
    );
  }
}
