import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProgressBar extends StatelessWidget {
  // TODO: properties class with nullable value
  double? width;
  int? value;
  int? totalValue;

  // TODO: buat constructornya
  ProgressBar({this.width, this.value, this.totalValue});

  @override
  Widget build(BuildContext context) {
    //* buat variabel penampung ratio
    double? ratio = value! / totalValue!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.timer),
        const SizedBox(
          height: 10,
        ),

        // TODO: widget yang digunakan untuk menumpuk tampilan layar
        Stack(
          children: [
            Container(
              width: width!,
              height: 10,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5)),
            ),

            // TODO: widget yang memperbolehkan custom material
            Material(
              borderRadius: BorderRadius.circular(5),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: 10,
                width: width! * ratio,
                decoration: BoxDecoration(
                  color: (ratio < 0.3) ? Colors.red : Colors.black38,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
