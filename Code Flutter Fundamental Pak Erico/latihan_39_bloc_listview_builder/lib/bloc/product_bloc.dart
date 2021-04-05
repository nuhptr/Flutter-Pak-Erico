import 'package:bloc/bloc.dart';
import 'package:latihan_39_bloc_listview_builder/model/product.dart';

class ProductBloc extends Bloc<int, List<Product>> {
  ProductBloc(List initialState) : super(initialState);

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> product = [];
    for (var i = 0; i < event; i++) {
      product.add(
        Product(
            imageUrl:
                "https://cdn-prod.medicalnewstoday.com/content/images/articles/308/308796/mixed-fruits.jpg",
            name: "Produk " + i.toString(),
            price: (i + 1) * 5000),
      );
    }
    yield product;
  }
}
