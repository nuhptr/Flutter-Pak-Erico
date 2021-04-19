import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

import '../lib/bloc/product_bloc.dart';

void main() {
  group("testing initial Bloc", () {
    blocTest("Inisialisasi Product Bloc",
        build: () => ProductBloc(), expect: []);
  });
}
