import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  // TODO: properties class
  String? url;
  String? name;
  String? price;
  int? quantity;
  String? notification;
  Function()? onAddCartTap;
  Function()? onDecTap;
  Function()? onIncTap;

  ///! Constructor widget ProductCard()
  ProductCard({
    this.url,
    this.name,
    this.price,
    this.onAddCartTap,
    this.quantity = 0,
    this.onDecTap,
    this.onIncTap,
    this.notification,
  });

  // TODO: style yang sudah dipersiapkan
  final TextStyle textStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //* Notifikasi
        Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedContainer(
            margin: const EdgeInsets.only(left: 10, right: 10),
            duration: const Duration(milliseconds: 300),
            width: 200,
            height: (notification != null) ? 50 : 0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.green[300],
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                notification ?? "",
                style: textStyle.copyWith(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ),

        // * Container tengah
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // * Image from network
                    Container(
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(url!),
                            fit: BoxFit.contain,
                          )),
                    ),

                    //* widget for name
                    Center(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        child: Text(
                          name!,
                          maxLines: 1,
                          style: textStyle,
                        ),
                      ),
                    ),

                    // * widget for price
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          price!,
                          style: textStyle,
                        ),
                      ),
                    )
                  ],
                ),

                // TODO: dibawah nama dan harga
                Column(
                  children: [
                    // TODO: tombol + -
                    Container(
                      width: 235,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue.shade300),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // TODO: +
                          GestureDetector(
                            onTap: onIncTap,
                            child: Container(
                              width: 30,
                              height: 30,
                              child: const Icon(
                                Icons.add,
                                size: 18,
                                color: Colors.blue,
                              ),
                            ),
                          ),

                          // TODO: quantity
                          Text(
                            quantity.toString(),
                            style: textStyle,
                          ),

                          // TODO: -
                          GestureDetector(
                            onTap: onDecTap,
                            child: Container(
                              width: 30,
                              height: 30,
                              child: const Icon(
                                Icons.remove,
                                size: 18,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 235,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: onAddCartTap!,
                        child: const Icon(Icons.add_shopping_cart,
                            size: 18, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16))),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10)
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
