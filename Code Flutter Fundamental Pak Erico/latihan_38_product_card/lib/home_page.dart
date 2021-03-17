import 'package:flutter/material.dart';

import 'package:latihan_38_product_card/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Card'),
        backgroundColor: firstColor,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.center,
          child: ProductCard(),
        ),
      ),
    );
  }
}
