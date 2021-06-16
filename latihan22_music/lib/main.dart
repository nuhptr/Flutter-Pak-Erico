import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // TODO : lock device screen orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String? duration = "00:00:00";
  late AudioPlayer? audioPlayer;

  _HomeState() {
    audioPlayer = AudioPlayer();
    audioPlayer!.onAudioPositionChanged.listen((event) {
      setState(() {
        duration = event.toString();
      });
    });
    // TODO : untuk meloping/stop/release music pertama kali
    audioPlayer!.setReleaseMode(ReleaseMode.LOOP);
  }

  // TODO: play music using null check
  void playMusic(String? url) async {
    await audioPlayer!.play(url!);
  }

  // TODO: resume music using null check
  void resumeMusic() async {
    await audioPlayer!.resume();
  }

  // TODO: pause music using null check
  void pauseMusic() async {
    await audioPlayer!.pause();
  }

  // TODO: stop music using null check
  void stopMusic() async {
    await audioPlayer!.stop();
  }

  // TODO : kalo ketemu masalah di jalanin project update kotlin di build.gradle = "1.4.32"
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // TODO: play music
            ElevatedButton(
              onPressed: () {
                playMusic(
                    'https://soundimage.org/wp-content/uploads/2014/09/Our-Mountain_v003.mp3');
              },
              child: Text("Play Music"),
            ),
            // TODO: pause music
            ElevatedButton(
              onPressed: () {
                pauseMusic();
              },
              child: Text("Pause Music"),
            ),
            // TODO: resume music
            ElevatedButton(
              onPressed: () {
                resumeMusic();
              },
              child: Text("Resume Music"),
            ),
            // TODO: stop music
            ElevatedButton(
              onPressed: () {
                stopMusic();
              },
              child: Text("Stop Music"),
            ),
            // TODO: show the duration
            Text(
              "Duration : " + duration!,
            )
          ],
        ),
      ),
    );
  }
}
