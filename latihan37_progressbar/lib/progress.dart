import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProgressBar extends StatefulWidget {
  // TODO: properties class with nullable value
  double? width;
  int? value;
  int? totalValue;

  // TODO: buat constructornya
  ProgressBar({this.width, this.value, this.totalValue});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    //* buat variabel penampung ratio
    double? ratio = widget.value! / widget.totalValue!;

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
              width: widget.width!,
              height: 10,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(5)),
            ),
            const SizedBox(
              width: 10,
            ),

            // TODO: widget yang memperbolehkan custom material
            Material(
              borderRadius: BorderRadius.circular(5),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                height: 10,
                width: widget.width! * ratio,
                decoration: BoxDecoration(
                  color: (ratio < 0.3)
                      ? Colors.red.shade300
                      : (ratio < 0.6)
                          ? Colors.green.shade300
                          : Colors.yellow.shade300,
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
