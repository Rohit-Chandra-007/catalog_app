import 'package:flutter/material.dart';
import 'package:flutter_app_one/modals/catalog.dart';
import 'package:flutter_app_one/pages/detail_page.dart';
import 'package:flutter_app_one/widgets/catalog_widget.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.products!.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.products![index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      catalog: catalog,
                    )),
          ),
          child: CatalogWidget(
            catalog: catalog,
          ),
        );
      },
    );
  }
}
