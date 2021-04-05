import 'package:flutter/material.dart';

import 'package:latihan_41_mvvm/model/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blueGrey),
      ),
      child: Row(
        children: [
          Container(
            width: 75,
            height: 75,
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(user.avatar),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("id " + user.id),
              Text('Nama ' + user.firstName + user.lastName),
              Text('Email ' + user.email)
            ],
          )
        ],
      ),
    );
  }
}