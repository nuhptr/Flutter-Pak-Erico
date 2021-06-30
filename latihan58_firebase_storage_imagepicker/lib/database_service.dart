import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'dart:io';

class DatabaseService {
  // TODO: buat instancenya
  static CollectionReference? products =
      FirebaseFirestore.instance.collection('product');

  // TODO: create and update to database
  static Future<void> createOrUpdateProduct(String? id,
      {String? name, int? price}) async {
    return await products!.doc(id!).set({
      'name': name!,
      'price': price!,
    });
  }

  // TODO: get data from database
  static Future<DocumentSnapshot> getProduct(String? id) async {
    return await products!.doc(id!).get();
  }

  // TODO: delete data from database
  static Future<void> deleteProduct(String? id) async {
    await products!.doc(id!).delete();
  }

  // TODO: upload image to firebase storage
  static Future<String> uploadImage(File imageFile) async {
    String? fileName = basename(imageFile.path);

    var ref = FirebaseStorage.instance.ref().child(fileName);
    var task = ref.putFile(imageFile);
    var snapshot = await task.whenComplete(() {});

    return await snapshot.ref.getDownloadURL();
  }
}
