import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  String id;
  String name;

  User({this.id, this.name});

  factory User.createUser(Map<String, dynamic> json) {
    return User(
      id: json['id'].toString(),
      name: json['first_name'] + " " + json['last_name'],
    );
  }

  static Future<User> connectToApi(String id) async {
    String apiUrl = "https://reqres.in/api/users/" + id;

    var apiResult = await http.get(Uri.parse(apiUrl));
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}
