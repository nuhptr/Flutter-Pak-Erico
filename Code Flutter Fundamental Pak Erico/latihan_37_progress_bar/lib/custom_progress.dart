import 'package:flutter/material.dart';

class CustomProgressBar extends StatelessWidget {
  final double width;
  final int value;
  final int totalValue;

  ///! Masukan nilai integer supaya tidak error
  const CustomProgressBar({this.width, this.value, this.totalValue});

  @override
  Widget build(BuildContext context) {
    double ratio = value / totalValue;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.timer),
        SizedBox(width: 10),
        Stack(
          children: [
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5)),
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              child: AnimatedContainer(
                  height: 10,
                  width: width * ratio,
                  duration: Duration(milliseconds: 500),
                  decoration: BoxDecoration(
                    color: (ratio < 0.3) ? Colors.red : Colors.black87,
                    borderRadius: BorderRadius.circular(5),
                  )),
            )
          ],
        )
      ],
    );
  }
}
