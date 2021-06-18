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

  // TODO: get user ke API
  static Future<User> getUser(String? id) async {
    String url = "https://reqres.in/api/users/" + id!;

    var result = await http.get(Uri.parse(url));
    var jsonResult = json.decode(result.body);
    // TODO: get bersarang ke json
    var userData = (jsonResult as Map<String, dynamic>)["data"];

    return User.fromJson(userData);
  }
}
