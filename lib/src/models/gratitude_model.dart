import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GratitudeModel {
  // initiate docs
  final CollectionReference _users =
      FirebaseFirestore.instance.collection('users');

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create gratitude collection
  Future<void> gratittude(
      String title, String gratitude1, String gratitude2) async {
    return await _users
        .doc(_auth.currentUser!.uid)
        .collection('gratitude')
        .doc()
        .set({
      'timeStamp': DateTime.now().microsecondsSinceEpoch,
      'title': title,
      'gratitude1': gratitude1,
      'gratitude2': gratitude2
    });
  }
}
