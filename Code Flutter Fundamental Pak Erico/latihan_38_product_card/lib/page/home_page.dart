import 'package:flutter/material.dart';

import 'package:latihan_38_product_card/widget/product_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Card'),
      ),
      body: ChangeNotifierProvider<ProductState>(
        create: (_) => ProductState(),
        child: Container(
          margin: EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.center,
            child: Consumer<ProductState>(
              builder: (BuildContext context, productState, _) => ProductCard(
                name: "Flutter Language",
                price: "\$ 20",
                imageUrl:
                    "https://pbs.twimg.com/profile_images/1141781661551665153/BMnvVd2u_400x400.jpg",
                onAddCartTap: () {},
                quantity: productState.quantity,
                onIncTap: () {
                  productState.quantity++;
                },
                onDecTap: () {
                  productState.quantity--;
                },
                notification: (productState.quantity > 5) ? "Diskon 10%" : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProductState with ChangeNotifier {
  int _quantity = 0;

  int get quantity => _quantity;
  set quantity(int newValue) {
    _quantity = newValue;
    notifyListeners();
  }
}
