import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:latihan_57_http_simulasi_mockito/person.dart';

class PersonService {
  static Future<Person> getPersonById(String id, http.Client client) async {
    String url = ".../persons/" + id;

    var response = await client.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception('error');
    }
    var result = json.decode(response.body);

    return Person.fromJson(result);
  }
}
