import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final int price;

  Product({this.name, this.price});

  @override
  // TODO: implement props
  List<Object> get props => [name, price];
}
