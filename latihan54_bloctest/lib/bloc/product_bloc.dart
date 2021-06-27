import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:latihan54_bloctest/model/product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial());

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    // TODO: Event -> AddProduct, jika kondisi state sedang kosong maka akan ditambagkan list product
    if (event is AddProduct) {
      if (state is ProductInitial) {
        yield ProductLoad([event.product!]);
      } else {
        // TODO: jika tidak kosong maka product sekarang akan ditambahkan event.product! selanjutnya
        yield ProductLoad((state as ProductLoad).product! + [event.product!]);
      }
    }

    // TODO: Event -> RemoveProduct, kondisi state kosong
    else {
      if (state is ProductInitial) {
        yield state;
      } else {
        yield ProductLoad(
          (state as ProductLoad)
              .product!
              .where((item) => item != event.product!)
              .toList(),
        );
      }
    }
  }
}
