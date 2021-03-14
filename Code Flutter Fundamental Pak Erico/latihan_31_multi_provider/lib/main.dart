import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:latihan_31_multi_provider/cart.dart';
import 'package:latihan_31_multi_provider/money.dart';

void main() {
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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (BuildContext context) => Money()),
          ChangeNotifierProvider(create: (BuildContext context) => Cart())
        ],
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Consumer<Money>(
        builder: (BuildContext context, money, _) => Consumer<Cart>(
          builder: (BuildContext context, cart, _) => FloatingActionButton(
            onPressed: () {
              if (money.balance >= 500) {
                cart.quantity += 1;
                money.balance -= 500;
              }
            },
            child: Icon(Icons.shopping_cart),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Multi Provider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Balance'),
                Container(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Consumer<Money>(
                        builder: (BuildContext context, money, _) =>
                            Text(money.balance.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                )),
                      )),
                  height: 30,
                  width: 150,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                    border: Border.all(color: Colors.blue, width: 2),
                  ),
                ),
              ],
            ),
            Container(
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Consumer<Cart>(
                    builder: (BuildContext context, cart, _) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Apple(500) x ' + cart.quantity.toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            )),
                        Text((500 * cart.quantity).toString(),
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                  )),
              height: 30,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black, width: 2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
