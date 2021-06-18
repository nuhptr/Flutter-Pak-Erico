import 'dart:convert';
import 'package:http/http.dart' as http;

class People {
  String? id, name, job, createdAt;

  People({this.id, this.name, this.job, this.createdAt});

  // TODO: untuk mengambil nilai properties dari json
  factory People.fromJson(Map<String, dynamic> json) {
    return People(
      id: json["id"],
      name: json["name"],
      job: json["job"],
      createdAt: json["createdAt"],
    );
  }

  // TODO : Mengambil data dari API
  static Future<People> getName(String? name, String? job) async {
    String url = "https://reqres.in/api/users";

    var result = await http.post(Uri.parse(url), body: {
      "name": name,
      "job": job,
    });
    var jsonResult = json.decode(result.body);
    return People.fromJson(jsonResult);
  }
}
