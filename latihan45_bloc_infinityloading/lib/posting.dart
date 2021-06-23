import 'dart:convert';

import 'package:http/http.dart' as http;

class Posting {
  String? id;
  String? title;
  String? body;

  Posting({this.id, this.title, this.body});

  factory Posting.fromJson(Map<String, dynamic> json) {
    return Posting(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  static Future<List<Posting>> getPost(int? id, int? limit) async {
    // TODO: get the url link
    String? url = 'https://jsonplaceholder.typicode.com/posts?_start=' +
        id!.toString() +
        '&_limit=' +
        limit!.toString();

    var result = await http.get(Uri.parse(url));
    var jsonResult = json.decode(result.body) as List;

    // TODO: return mapping data of json to class posting
    return jsonResult
        .map<Posting>((item) => Posting(
              id: item['id'].toString(),
              title: item['title'],
              body: item["body"],
            ))
        .toList(); //* jangan lupa ketika mapping selalu .toList()
  }
}
