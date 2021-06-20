import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // TODO: lock screen device orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

// TODO: ini yang dinamakan dokumentasi buatan sendiri
class Home extends StatelessWidget {
  /// * field save a name nullable
  final String? name;

  /// * field save a role nullable
  final String? role;

  /// * field save a image user nullable
  final String? photo;

  /// * [name] default = `" "`
  /// * [role] default = `" "`
  /// * [photoUrl] default = `" "`
  const Home({this.name = "", this.role = "", this.photo = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: NetworkImage(
                    photo ??
                        "https://cdn4.iconFinder.com/data/icons/web-ui-color/128/Account-512.png",
                  ),
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              name ?? "Adi",
              style:
                  const TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              role ?? "Proggramer",
              style: const TextStyle(fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
