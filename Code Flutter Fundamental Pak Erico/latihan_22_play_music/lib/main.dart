import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String durasi = "00:00:00";
  AudioPlayer audioPlayer;

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Playing Music'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  playSound(
                      'https://soundimage.org/wp-content/uploads/2014/09/Our-Mountain_v003.mp3');
                },
                child: Text('Play'),
              ),
              ElevatedButton(
                onPressed: () {
                  pauseSound();
                },
                child: Text('Pause'),
              ),
              ElevatedButton(
                onPressed: () {
                  stopSound();
                },
                child: Text('Stop'),
              ),
              ElevatedButton(
                onPressed: () {
                  resumeSound();
                },
                child: Text('Resume'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                durasi,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
