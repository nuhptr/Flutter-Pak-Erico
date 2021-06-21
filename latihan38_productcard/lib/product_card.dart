import 'package:flutter/material.dart';
import 'theme.dart';

class ProductCard extends StatelessWidget {
  // TODO: properties kelas product card
  String? urlImage;
  String? name;
  int? quantity;
  int? price;
  String? notification;
  // TODO: cara membuat function baru
  Function()? onAddCartTap;
  Function()? onDecTap;
  Function()? onIncTap;

  ProductCard({
    this.urlImage,
    this.name,
    this.quantity = 0,
    this.price,
    this.notification,
    this.onAddCartTap,
    this.onIncTap,
    this.onDecTap,
  });

  var textStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // TODO: notifikasi
        Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: 200,
              height: (notification != null) ? 50 : 0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: secondColor),
              child: Align(
                alignment: Alignment.center,
                child: Text(notification ?? " ",
                    style:
                        textStyle.copyWith(color: Colors.white, fontSize: 12)),
              )),
        ),

        // TODO: widget layar diatasnya
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 250,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  // TODO: 1
                  Container(
                    width: 250,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16)),
                        image: DecorationImage(
                            image: NetworkImage(urlImage!),
                            fit: BoxFit.contain)),
                  ),

                  //TODO: 2
                  Center(
                    child: Container(
                        margin: const EdgeInsets.all(5),
                        child: Text(
                          name!,
                          maxLines: 1,
                          style: textStyle,
                        )),
                  ),

                  //TODO: 3
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      child: Text(
                        price!.toString(),
                        style: textStyle,
                      ),
                    ),
                  )
                ]),

                // TODO: column kedua
                Column(children: [
                  //* tombol + -
                  Container(
                    width: 235,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade300),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: onIncTap!,
                            child: Container(
                                width: 30,
                                height: 30,
                                child: const Icon(Icons.add,
                                    size: 18, color: Colors.blue)),
                          ),
                          Text(
                            quantity!.toString(),
                            style: textStyle,
                          ),
                          GestureDetector(
                            onTap: onDecTap!,
                            child: Container(
                                width: 30,
                                height: 30,
                                child: Icon(
                                  Icons.remove,
                                  size: 18,
                                  color: Colors.blue.shade300,
                                )),
                          )
                        ]),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                      width: 235,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: onAddCartTap!,
                        child: Icon(Icons.add_shopping_cart,
                            size: 18, color: Colors.blue.shade300),
                      )),
                ]),
                const SizedBox(height: 10)
              ],
            ),
          ),
        )
      ],
    );
  }
}
