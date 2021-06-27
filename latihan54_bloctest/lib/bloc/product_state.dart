part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoad extends ProductState {
  List<Product>? product;

  ProductLoad(this.product);

  @override
  List<Object> get props => [product!];
}
