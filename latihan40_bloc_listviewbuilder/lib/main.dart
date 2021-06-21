import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan40_bloc_listviewbuilder/product.dart';

import 'package:latihan40_bloc_listviewbuilder/product_bloc.dart';
import 'package:latihan40_bloc_listviewbuilder/product_card.dart';

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
      // TODO: untuk mendaftarkan bloc di kelas utama
      home: BlocProvider<ProductBloc>(
        create: (BuildContext context) => ProductBloc([]),
        child: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO: properties kelas
  var r = Random();

  @override
  Widget build(BuildContext context) {
    // TODO: membuat variable penampung kelas ProductBloc
    var blocProduct = BlocProvider.of<ProductBloc>(context);

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                blocProduct.add(r.nextInt(4) + 2);
                setState(() {});
              },
              child: const Text("Tambah")),

          // TODO: builder
          BlocBuilder<ProductBloc, List<Product>>(
            builder: (context, product) => Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                return Row(children: [
                  (index == 0)
                      ? const SizedBox(width: 40)
                      : const SizedBox(width: 30),
                  ProductCard(
                    url: product[index].url,
                    name: product[index].name,
                    price: product[index].price.toString(),
                    onAddCartTap: () {},
                    onDecTap: () {},
                    onIncTap: () {},
                    notification: "Discount 10%",
                    quantity: 10,
                  )
                ]);
              },
              scrollDirection: Axis.horizontal,
              itemCount: product.length,
            )),
          )
        ],
      ),
    );
  }
}
