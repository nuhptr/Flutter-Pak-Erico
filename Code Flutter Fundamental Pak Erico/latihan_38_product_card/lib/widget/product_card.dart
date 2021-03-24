import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  ///! variabel untuk memasukan image
  final String imageUrl;

  ///! variabel untuk memasukan name
  final String name;

  ///! variabel untuk memasukan price
  final String price;

  ///! Constructor widget ProductCard()
  ProductCard({Key key, this.imageUrl, this.name, this.price})
      : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  var textStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.grey[800],
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Notifikasi
        Container(
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
                          image: NetworkImage(widget.imageUrl),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        widget.name,
                        maxLines: 1,
                        style: textStyle,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Text(
                        widget.price,
                        style: textStyle,
                      ),
                    ),
                  )
                ],
              ),
              Text('Bawah'),
            ],
          ),
        )
      ],
    );
  }
}
