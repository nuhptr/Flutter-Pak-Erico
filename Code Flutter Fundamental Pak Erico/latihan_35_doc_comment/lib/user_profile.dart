import 'package:flutter/material.dart';

///? Class to Show Profile User
//
class UserProfile extends StatelessWidget {
  ///? field untuk menyimpan nama user
  final String name;

  ///? field untuk menyimpan role user
  final String role;

  ///? field untuk menyimpan foto user
  final String photoUrl;

  /// * [name] default = `no name`.
  /// * [role] default = `no role`.
  /// * [photoUrl] berisi **foto user** = `null`
  const UserProfile(
      {this.name = 'no name', this.role = 'No Role', this.photoUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doc Comment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage((photoUrl != null)
                  ? photoUrl
                  : "https://cdn4.iconFinder.com/data/icons/web-ui-color/128/Account-512.png"),
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
            SizedBox(height: 10),
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 5),
            Text(
              "[" + role + "]",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
