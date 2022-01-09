import 'package:flutter/material.dart';
import 'package:online_hop/model/product_model.dart';
import 'package:online_hop/pages/general_ui_item.dart';
import 'package:online_hop/pages/product_info_page.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;

  const ProductTile({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration:
                BoxDecoration(border: Border.all(color: Colors.grey, width: .5)),
        child: InkWell(
          onTap: () => pushRoute(
              context,
              ProductInfoPage(
                product: product,
              )),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    product.imageUrl,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width * .4,
                    height: 100,
                  ),
                  horizontalSpace(),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(product.title),
                        // Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 32, 0, 4),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.location_on),
                              Expanded(
                                child: Text(
                                    product.address + ", " + product.uploadDate),
                              ),
                            ],
                          ),
                        ),
                        Text(product.price),
                      ],
                    ),
                  ),
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  buildBotomButton(
                      "Chat", Icons.mail_outline, Colors.blue, () {}),
                  buildBotomButton("Call", Icons.call, Colors.green, () {})
                ],
              ),
              // verticalSpace(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBotomButton(
      String text, IconData icon, Color color, Function onTaped) {
    return Expanded(
      child: InkWell(
        onTap: onTaped,
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey, width: .5)),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  children: <Widget>[Icon(icon), horizontalSpace(), Text(text)],
                ),
              ),
              Container(
                height: 3,
                color: color,
              )
            ],
          ),
        ),
      ),
    );
  }
}
