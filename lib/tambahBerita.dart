import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FireStoreDataBase {
  List dataPengiriman = [];
  final CollectionReference pengiriman =
      FirebaseFirestore.instance.collection("berita");

  Future getData() async {
    try {
      await pengiriman.get().then((querySnapshot) {
        for (var result in querySnapshot.docs) {
          dataPengiriman.add(result.data());
        }
      });

      return dataPengiriman;
    } catch (e) {
      debugPrint("Error - $e");
      return null;
    }
  }
}
