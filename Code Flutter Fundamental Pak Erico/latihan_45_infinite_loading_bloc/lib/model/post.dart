import 'dart:convert';
import "package:http/http.dart" as http;

class Post {
  String id, title, body;

  Post({this.id, this.title, this.body});

  factory Post.createPost(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  static Future<List<Post>> connectApi(int id, int limit) async {
    String url = "https://jsonplaceholder.typicode.com/posts?_start=" +
        id.toString() +
        "&_limit=" +
        limit.toString();

    var resultApi = await http.get(Uri.parse(url));
    var jsonObject = json.decode(resultApi.body) as List;
    return jsonObject
        .map<Post>((item) =>
            Post(id: item["id"], title: item["title"], body: item['body']))
        .toList();
  }
}
