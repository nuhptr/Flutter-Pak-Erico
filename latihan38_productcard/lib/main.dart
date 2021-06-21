import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:latihan38_productcard/product_card.dart';
import 'package:latihan38_productcard/product_provider.dart';

void main() {
  // TODO: lock device screen orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<ProductProvider>(
        create: (_) => ProductProvider(),
        child: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.center,
          child: Consumer<ProductProvider>(
            builder: (BuildContext context, product, _) => ProductCard(
              name: "Flutter Language",
              price: 200000,
              urlImage:
                  "https://pbs.twimg.com/profile_images/1141781661551665153/BMnvVd2u_400x400.jpg",
              quantity: product.quantity,
              onAddCartTap: () {},
              onIncTap: () {
                product.quantity = product.quantity! + 1;
              },
              onDecTap: () {
                product.quantity = product.quantity! - 1;
              },
              notification: (product.quantity! > 5) ? "Diskon 10%" : " ",
            ),
          ),
        ),
      ),
    );
  }
}
