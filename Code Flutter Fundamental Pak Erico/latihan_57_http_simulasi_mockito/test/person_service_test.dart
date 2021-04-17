import 'package:latihan_57_http_simulasi_mockito/person.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latihan_57_http_simulasi_mockito/person_service.dart';
import 'package:http/http.dart' as http;

class MockClient extends Mock with http.Client {}

void main() {
  http.Client client = MockClient();

  test("test ambil data", () async {
    String id = "1";
    String url = ".../persons/";
    when(client.get(Uri.parse(url + id))).thenAnswer(
      (_) async => Future.value(http.Response("""{
          "id" : $id,
          "name" : "adi",
          "age" : 20
        }""", 200)),
    );

    Person person = await PersonService.getPersonById(id, client);
    expect(person, equals(Person(id: 1, name: 'adi', age: 20)));
  });

  test("test error", () async {
    String id = "1";
    String url = ".../persons/";
    when(client.get(Uri.parse(url + id))).thenAnswer(
      (_) async => Future.value(http.Response("""{
         "message" : "tidak ada akses
        }""", 403)),
    );

    expect(PersonService.getPersonById(id, client), throwsException);
  });
}
