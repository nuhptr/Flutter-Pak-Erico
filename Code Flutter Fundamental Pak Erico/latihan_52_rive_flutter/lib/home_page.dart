import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Artboard _riveArtboard;
  RiveAnimationController _controller;

  // todo : playIcon
  void _tooglePlay() {
    setState(() {
      _controller.isActive = !_controller.isActive;
    });
  }

  // todo : isPlaying the rive?
  bool get isPlaying => _controller?.isActive ?? false;

  @override
  void initState() {
    super.initState();
    rootBundle.load("assets/animation.riv").then((value) async {
      final file = RiveFile.import(value);
      final artboard = file.mainArtboard;
      artboard.addController(
        _controller = SimpleAnimation('Animation2'),
      );

      setState(() {
        _riveArtboard = artboard;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _riveArtboard == null
            ? const SizedBox()
            : Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 3 / 4,
                child: Rive(artboard: _riveArtboard),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _tooglePlay,
        tooltip: isPlaying ? "pause" : "play",
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
