import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  // TODO: properties kelas user
  String? id, name;

  User({this.id, this.name});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"].toString(),
      name: json["first_name"] + " " + json["last_name"],
    );
  }

  // TODO: data yang diambil berbentuk list
  static Future<List<User>> getUser(String? id) async {
    String url = "https://reqres.in/api/users?page=" + id!;

    var result = await http.get(Uri.parse(url));
    var jsonObject = json.decode(result.body);

    // TODO: ubah ke list dynamic
    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)["data"];
    // TODO: buat array kosong
    List<User> users = [];
    for (var i = 0; i < listUser.length; i++) {
      users.add(User.fromJson(listUser[i]));
    }

    return users;
  }
}
