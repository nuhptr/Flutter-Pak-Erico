import 'services.dart';

Future<void> main(List<String> arguments) async {
  var services = ServiceSingleton();
  var services2 = ServiceSingleton();

  var user = await services.getUserData();

  if (services == services2) {
    print('Sama');
  } else {
    print('Beda');
  }
}
