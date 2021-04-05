import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan_39_bloc_listview_builder/bloc/product_bloc.dart';
import 'package:latihan_39_bloc_listview_builder/model/product.dart';
import 'package:latihan_39_bloc_listview_builder/widget/product_card.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Random r = Random();

  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);

    return Scaffold(
      appBar: AppBar(title: Text("ListView Builder Bloc")),
      body: ListView(
        children: [
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  bloc.add(r.nextInt(4) + 2);
                },
                child: Text('Tambah'),
              ),
              BlocBuilder<ProductBloc, List<Product>>(
                builder: (context, products) => Expanded(
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        imageUrl: products[index].imageUrl,
                        name: products[index].name,
                        price: products[index].price.toString(),
                        onAddCartTap: () {},
                        onIncTap: () {},
                        onDecTap: () {},
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
