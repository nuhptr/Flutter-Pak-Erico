import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:latihan54_bloctest/bloc/product_bloc.dart';
import 'package:latihan54_bloctest/model/product.dart';

void main() {
  group('-> test', () {
    blocTest(
      'initial value',
      build: () => ProductBloc(),
      expect: () => [],
    );

    blocTest('add product',
        build: () => ProductBloc(),
        act: (ProductBloc bloc) async {
          bloc.add(AddProduct(Product('Apel', 2000)));
        },
        expect: () => [
              ProductLoad([Product('Apel', 2000)])
            ]);

    blocTest('add 2 product',
        build: () => ProductBloc(),
        act: (ProductBloc bloc) async {
          bloc.add(AddProduct(Product('Apel', 2000)));
          bloc.add(AddProduct(Product('Durian', 3000)));
        },
        expect: () => [
              ProductLoad([Product('Apel', 2000)]),
              ProductLoad([Product('Apel', 2000), Product('Durian', 3000)])
            ]);

    blocTest('remove product',
        build: () => ProductBloc(),
        act: (ProductBloc bloc) async {
          bloc.add(RemoveProduct(Product('Apel', 2000)));
        },
        expect: () => [ProductInitial()]);

    blocTest('add then remove product',
        build: () => ProductBloc(),
        act: (ProductBloc bloc) async {
          bloc.add(AddProduct(Product('Apel', 2000)));
          bloc.add(RemoveProduct(Product('Apel', 2000)));
        },
        expect: () => [
              ProductLoad([Product('Apel', 2000)]),
              ProductLoad([]),
            ]);
  });
}
