import 'package:flutter/material.dart';
import 'package:latihan_38_product_card/theme.dart';

class ProductCard extends StatelessWidget {
  ///! variabel untuk memasukan image
  final String imageUrl;

  ///! variabel untuk memasukan name
  final String name;

  ///! variabel untuk memasukan price
  final String price;

  ///! variabel Quantity
  final int quantity;

  ///! variabel notification
  final String notification;

  ///! function onAddCartTap () {}
  final Function onAddCartTap;

  ///! function onDecTap () {}
  final Function onDecTap;

  ///! function onIncTap () {}
  final Function onIncTap;

  ///! Constructor widget ProductCard()
  ProductCard(
      {this.imageUrl,
      this.name,
      this.price,
      this.onAddCartTap,
      this.quantity = 0,
      this.onDecTap,
      this.onIncTap,
      this.notification});

  final TextStyle textStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //? Notifikasi
        Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedContainer(
            margin: EdgeInsets.only(left: 10, right: 10),
            duration: Duration(milliseconds: 300),
            width: 200,
            height: (notification != null) ? 50 : 0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              color: secondColor,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                (notification != null) ? notification : "",
                style: textStyle.copyWith(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 250,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.10),
                  blurRadius: 15,
                  offset: Offset(0, 0),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 250,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                            topRight: Radius.circular(16),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(imageUrl),
                            fit: BoxFit.contain,
                          )),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Text(
                          name,
                          maxLines: 1,
                          style: textStyle,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Text(
                          price,
                          style: textStyle,
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    //? tombol + -
                    Container(
                      width: 235,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue[300]),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: onIncTap,
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Icon(
                                Icons.add,
                                size: 18,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Text(
                            quantity.toString(),
                            style: textStyle,
                          ),
                          GestureDetector(
                            onTap: onDecTap,
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Icon(
                                Icons.remove,
                                size: 18,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 235,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: onAddCartTap,
                        child: Icon(Icons.add_shopping_cart,
                            size: 18, color: Colors.white),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
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
