import 'package:flutter/material.dart';

import 'package:latihan41_mvvm/user.dart';

class UserCard extends StatelessWidget {
  User? user;

  UserCard(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(user!.avatar!)),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ID " + user!.id!),
              const SizedBox(height: 5),
              Text("Nama " + user!.firstName! + " " + user!.lastName!),
              const SizedBox(height: 5),
              Text("Email :\n" + user!.email!)
            ],
          )
        ],
      ),
    );
  }
}
