import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HopesModel {
  // initiate docs
  final CollectionReference _users =
      FirebaseFirestore.instance.collection('users');

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create gratitude collection
  Future<void> hopes(String fear, String hopes1, String hopes2) async {
    return await _users
        .doc(_auth.currentUser!.uid)
        .collection('hopes')
        .doc()
        .set({
      'timeStamp': DateTime.now().microsecondsSinceEpoch,
      'fear': fear,
      'hopes1': hopes1,
      'hopes2': hopes2
    });
  }
}
