import 'package:equatable/equatable.dart';

class Album extends Equatable {
  int? id;
  String? title;
  int? userId;

  Album({this.id, this.userId, this.title});

  @override
  // TODO: implement props
  List<Object?> get props => [id, userId, title];

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json["userId"],
      title: json["title"],
      id: json["id"],
    );
  }
}
