import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_one/modals/catalog.dart';
import 'package:flutter_app_one/widgets/catalog_widget.dart';
import 'package:flutter_app_one/widgets/my_app_theme.dart';
import 'package:velocity_x/velocity_x.dart';

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
    await Future.delayed(Duration(seconds: 2));
    var catalogData = await rootBundle.loadString('assets/files/catalog.json');
    var decodedData = jsonDecode(catalogData);
    var productData = decodedData['products'];
    CatalogModel.products =
        List.from(productData).map((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.products != null &&
                  CatalogModel.products.isNotEmpty)
                CatalogList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl4.bold.color(MyAppTheme.darkBluishColor).make(),
        SizedBox(
          height: 10,
        ),
        "Trending products".text.xl.make(),
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.products.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.products[index];
        return CatalogWidget(
          catalog: catalog,
        );
      },
    );
  }
}
