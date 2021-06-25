import 'package:equatable/equatable.dart';

// TODO: jika sudah inherit kelas lain gunakan EquatableMixin
class User extends Equatable {
  String? name;
  int? age;

  User({this.name, this.age});

  @override
  // TODO: implement props
  List<Object?> get props => [name, age];
}
