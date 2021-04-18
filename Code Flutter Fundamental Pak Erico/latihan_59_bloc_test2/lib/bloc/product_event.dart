part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  final Product product;
  const ProductEvent(this.product);

  @override
  List<Object> get props => [];
}

class AddProduct extends ProductEvent with EquatableMixin {
  AddProduct(Product product) : super(product);

  @override
  // TODO: implement props
  List<Object> get props => [product];
}

class RemoveProduct extends ProductEvent with EquatableMixin {
  RemoveProduct(Product product) : super(product);

  @override
  // TODO: implement props
  List<Object> get props => [product];
}
