import 'package:flutter/material.dart';
import 'package:flutter_app_one/modals/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogWidget extends StatelessWidget {
  final Item catalog;

  const CatalogWidget({Key? key, required this.catalog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name!.text.lg.color(context.accentColor).bold.make(),
              catalog.desc!.text.textStyle(context.captionStyle!).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          context.theme.buttonColor,
                        ),
                        shape: MaterialStateProperty.all(
                          StadiumBorder(),
                        )),
                    child: "Add to Cart".text.make(),
                  )
                ],
              ).pOnly(right: 16.0)
            ],
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py8();
  }
}

class CatalogImage extends StatelessWidget {
  final String? image;

  const CatalogImage({Key? key, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image!,
    ).box.rounded.p8.color(context.canvasColor).make().p16().w40(context);
  }
}
