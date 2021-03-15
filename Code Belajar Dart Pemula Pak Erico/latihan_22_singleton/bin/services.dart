import 'dart:developer';

import 'User.dart';

class Services {
  Future<User> getUserData() async {
    // asumse that we get user data from database and then return it
    return User();
  }
}

class ServiceSingleton {
  static final ServiceSingleton _instance = ServiceSingleton._internal();

  ServiceSingleton._internal();

  factory ServiceSingleton() {
    return _instance;
  }

  Future<User> getUserData() async {
    // asumse that we get user data from database and then return it
    return User();
  }
}
