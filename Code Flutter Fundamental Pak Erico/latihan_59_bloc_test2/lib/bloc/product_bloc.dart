import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:latihan_59_bloc_test2/model/product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial());

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    // TODO: implement mapEventToState
    if (event is AddProduct) {
      if (state is ProductInitial) {
        yield ProductLoaded(product: [event.product]);
      } else {
        yield ProductLoaded(
          product: (state as ProductLoaded).product + [event.product],
        );
      }
    } else {
      // TODO: Condition blank state dan there a state
      if (state is ProductInitial) {
        yield state;
      } else {
        yield ProductLoaded(
            product: (state as ProductLoaded)
                .product
                .where((element) => element != event.product)
                .toList());
      }
    }
  }
}
