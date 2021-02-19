import 'package:flutter/material.dart';
import 'package:flutter_app_one/widgets/my_app_theme.dart';
import 'package:velocity_x/velocity_x.dart';

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