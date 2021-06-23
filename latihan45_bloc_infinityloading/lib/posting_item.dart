import 'package:flutter/material.dart';

import 'posting.dart';

// ignore: must_be_immutable
class PostingItem extends StatelessWidget {
  // TODO: properties class
  Posting? posting;

  // ignore: use_key_in_widget_constructors
  PostingItem(this.posting);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // TODO: widget for show the data of json id,title, and body
          Text(posting!.id!),
          // ignore: sized_box_for_whitespace
          Container(
            width: (MediaQuery.of(context).size.width - 40) * 7 / 8,
            child: Column(
              children: [
                Text(
                  posting!.title!,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(posting!.body!),
              ],
            ),
          )
        ],
      ),
    );
  }
}
