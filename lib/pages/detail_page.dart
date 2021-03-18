import 'package:flutter/material.dart';
import 'package:flutter_app_one/modals/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailPage extends StatelessWidget {
  final Item catalog;
  const DetailPage({Key? key, required this.catalog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    context.theme.buttonColor,
                  ),
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
              child: "Add to Cart".text.xl.make(),
            ).wh(125, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image!).pOnly(top: 16),
            ).h40(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: context.cardColor,
                  child: Column(
                    children: [
                      catalog.name!.text.xl4
                          .color(context.accentColor)
                          .bold
                          .make(),
                      catalog.desc!.text.xl
                          .textStyle(context.captionStyle!)
                          .make(),
                      10.heightBox,
                      "Est at diam ipsum duo justo tempor, diam et diam sanctus takimata ipsum ut sanctus et, et dolor sit duo."
                          .text
                          .bold
                          .textStyle(context.captionStyle!)
                          .make()
                          .py16(),
                    ],
                  ).p32(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
