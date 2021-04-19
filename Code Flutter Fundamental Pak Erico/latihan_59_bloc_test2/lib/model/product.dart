import 'package:equatable/equatable.dart';

/// TODO: Class model Product
class Product extends Equatable {
  final String name;
  final int price;

  Product({this.name, this.price});

  @override
  List<Object> get props => [name, price];
}
