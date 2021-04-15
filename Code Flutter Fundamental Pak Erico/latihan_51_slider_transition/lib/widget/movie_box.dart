import 'package:flutter/material.dart';

class MovieBox extends StatelessWidget {
  final String url;
  final double scale;

  const MovieBox(this.url, {this.scale = 1});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: 300 * scale,
        height: 300 * scale,
        child: Image.network(
          url,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
