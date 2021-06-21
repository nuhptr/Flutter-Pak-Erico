import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:latihan40_bloc_listviewbuilder/product.dart';

class ProductBloc extends Bloc<int, List<Product>> {
  // TODO: untuk state ketika pertama kali dijalankan
  ProductBloc(List<Product> initialState) : super(initialState);

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    // TODO: implement mapEventToState
    List<Product>? product = [];

    for (var i = 0; i < event; i++) {
      product.add(Product(
          name: "Product " + i.toString(),
          price: (i + 1) * 5000,
          url:
              "https://cdn-prod.medicalnewstoday.com/content/images/articles/308/308796/mixed-fruits.jpg"));
    }

    // TODO: jangan lupa di return
    yield product;
  }
}
