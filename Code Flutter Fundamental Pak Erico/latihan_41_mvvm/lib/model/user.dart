import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final String avatar;

  User({this.id, this.email, this.firstName, this.lastName, this.avatar});

  factory User.createUser(Map<String, dynamic> json) {
    return User(
        id: json['id'].toString(),
        email: json['email'],
        firstName: json['first_name'],
        lastName: json['last_name'],
        avatar: json['avatar']);
  }

  static Future<User> getUserFromApi(int id) async {
    String url = 'https://reqres.in/api/users/' + id.toString();

    var apiResult = await http.get(Uri.parse(url));
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}

class UnitializedUser extends User {}
