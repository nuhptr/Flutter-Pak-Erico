import 'package:flutter/material.dart';

import 'package:latihan_38_product_card/product_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Card'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.center,
          child: ProductCard(
            name: "Flutter Language",
            price: "\$ 20",
            imageUrl:
                "https://www.inovex.de/blog/wp-content/uploads/2019/01/Flutter-1-1.png",
          ),
        ),
      ),
    );
  }
}
