import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  String? id, email, firstName, lastName, avatar;

  User({this.id, this.email, this.firstName, this.lastName, this.avatar});

  // TODO: properties dari json
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json["id"].toString(),
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"]);
  }

  // TODO: parsing Json
  static Future<User> getUser(int? id) async {
    var url = "https://reqres.in/api/users/" + id!.toString();

    var result = await http.get(Uri.parse(url));
    var jsonObject = json.decode(result.body);
    var user = (jsonObject as Map<String, dynamic>)["data"];

    return User.fromJson(user);
  }
}

// TODO: class yang digunakan sebelum di inisialisasi
class Uninitialized extends User {}
