import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_one/modals/catalog.dart';
import 'package:flutter_app_one/widgets/item_widget.dart';
import 'package:flutter_app_one/widgets/my_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogData = await rootBundle.loadString('assets/files/catalog.json');
    var decodedData = jsonDecode(catalogData);
    var productData = decodedData['products'];
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.products[0]);
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
