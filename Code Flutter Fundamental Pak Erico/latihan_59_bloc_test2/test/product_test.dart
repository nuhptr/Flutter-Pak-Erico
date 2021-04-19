import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:latihan_59_bloc_test2/bloc/product_bloc.dart';
import 'package:latihan_59_bloc_test2/model/product.dart';

void main() {
  group("Product Bloc Test", () {
    // TODO: inisialisasi ProductBloc
    blocTest(
      'Initial value',
      build: () => ProductBloc(),
      expect: [],
    );

    // TODO: Add product ketika masih kosong
    blocTest("Add Product",
        build: () => ProductBloc(),
        act: (bloc) async {
          bloc.add(
            AddProduct(Product(name: "Apel", price: 2000)),
          );
        },
        wait: const Duration(milliseconds: 300),
        expect: [
          ProductLoaded(product: [
            Product(name: "Apel", price: 2000),
          ])
        ]);

    // TODO: Add 2 product ketika udah ada product
    blocTest("Add 2 Product",
        build: () => ProductBloc(),
        act: (bloc) async {
          bloc.add(AddProduct(Product(name: "Apel", price: 2000)));
          bloc.add(AddProduct(Product(name: "Durian", price: 20000)));
        },
        wait: const Duration(milliseconds: 200),
        expect: [
          ProductLoaded(product: [Product(name: "Apel", price: 2000)]),
          ProductLoaded(product: [
            Product(name: "Apel", price: 2000),
            Product(name: "Durian", price: 20000)
          ])
        ]);

    // TODO: remove product ketika productnya masih kosong
    blocTest("Remove Product",
        build: () => ProductBloc(),
        act: (bloc) async {
          bloc.add(RemoveProduct(Product(name: "Apel", price: 2000)));
        },
        wait: const Duration(milliseconds: 100),
        expect: [
          ProductInitial(),
        ]);

    // TODO: Remove product jika sudah ada product
    blocTest("Remove Product (Product Loaded)",
        build: () => ProductBloc(),
        act: (bloc) async {
          bloc.add(AddProduct(Product(name: "Apel", price: 2000)));
          bloc.add(RemoveProduct(Product(name: "Apel", price: 2000)));
        },
        wait: const Duration(milliseconds: 100),
        expect: [
          ProductLoaded(product: [Product(name: "Apel", price: 2000)]),
          ProductLoaded(product: [])
        ]);
  });
}
