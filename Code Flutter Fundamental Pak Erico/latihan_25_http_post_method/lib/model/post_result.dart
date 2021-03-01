import 'dart:convert';
import 'package:http/http.dart' as http;

class PostResult {
  String id;
  String name;
  String job;
  String created;

  PostResult({this.id, this.name, this.job, this.created});

  factory PostResult.createdPostResult(Map<String, dynamic> json) {
    return PostResult(
      id: json['id'],
      name: json['name'],
      job: json['job'],
      created: json['createdAt'],
    );
  }

  static Future<PostResult> connectToApi(String name, String job) async {
    String urlApi = "https://reqres.in/api/users";

    var apiResult = await http
        .post(Uri.dataFromString(urlApi), body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createdPostResult(jsonObject);
  }
}
