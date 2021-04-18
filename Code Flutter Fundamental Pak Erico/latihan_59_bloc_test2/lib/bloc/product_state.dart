part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState with EquatableMixin {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class ProductLoaded extends ProductState with EquatableMixin {
  List<Product> product;
  ProductLoaded({this.product});

  @override
  // TODO: implement props
  List<Object> get props => [product];
}
