/// Right

class User {
  // user relate things
}

class UserManager {
  final IdatasStorage datastorage;

  UserManager(this.datastorage);

  void saveUserData(User user) {
    datastorage.saveData(user);
  }
}

abstract class IdatasStorage {
  void saveData(User user);
}

class FirebaseStorage implements IdatasStorage {
  @override
  void saveData(User user) {
    // connect firebase
    // save data
  }
}

class LocalStorage implements IdatasStorage {
  @override
  void saveData(User user) {
    // connect to local storage
    // save data
  }
}
