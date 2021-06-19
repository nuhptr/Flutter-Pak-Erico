import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:latihan32_multiprovider/cart_provider.dart';
import 'package:latihan32_multiprovider/money_provider.dart';

void main() {
  // TODO: lock screen device orientation
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
      // TODO: ketika membuat banyak provider seperti ini pemanggilannya
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (BuildContext context) => Money()),
          ChangeNotifierProvider(create: (BuildContext context) => Cart())
        ],
        child: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: widget pertama
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Balance"),
                Container(
                  height: 40,
                  width: 150,
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue[300],
                  ),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Consumer<Money>(
                          builder: (BuildContext context, money, _) => Text(
                                money.balance!.toString(),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ))),
                ),
              ],
            ),
            const SizedBox(height: 15),

            // TODO : widget kedua
            Container(
              height: 30,
              width: 250,
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black38, width: 2),
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Consumer<Cart>(
                  builder: (BuildContext context, cart, _) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Apple x 500 \t" + cart.amount!.toString()),
                      Text((500 * cart.amount!).toString())
                    ],
                  ),
                ),
              ),
            ),

            // TODO: button pengubah state
            const SizedBox(height: 10),
            Consumer<Money>(
              builder: (BuildContext context, money, _) => Consumer<Cart>(
                builder: (BuildContext context, cart, _) => ElevatedButton(
                  onPressed: () {
                    if (money.balance! >= 500) {
                      cart.amount = cart.amount! + 1;
                      money.balance = money.balance! - 500;
                    }
                  },
                  child: const Icon(Icons.shopping_cart),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
