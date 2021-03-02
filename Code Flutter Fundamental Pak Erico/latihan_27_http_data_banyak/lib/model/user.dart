import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String id;
  String name;

  User({this.id, this.name});

  factory User.createUser(Map<String, dynamic> json) {
    return User(
      id: json['id'].toString(),
      name: json['first_name'] + " " + json["last_name"],
    );
  }

  static Future<List<User>> getUsers(String page) async {
    String apiUrl = "https://reqres.in/api/users?page=" + page;

    var apiResult = await http.get(Uri.parse(apiUrl));
    var jsonObject = json.decode(apiResult.body);

    List<dynamic> listUser = (jsonObject as Map<String, dynamic>)['data'];
    List<User> users = [];
    for (int i = 0; i < listUser.length; i++) {
      users.add(User.createUser(listUser[i]));
    }

    return users;
  }
}
