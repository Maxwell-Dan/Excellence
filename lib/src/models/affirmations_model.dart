import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AffirmationsModel {
  // initiate docs
  final CollectionReference _users =
      FirebaseFirestore.instance.collection('users');

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create gratitude collection
  Future<void> affirmation(
    String affirmations,
  ) async {
    return await _users
        .doc(_auth.currentUser!.uid)
        .collection('affirmations')
        .doc()
        .set({
      'timeStamp': DateTime.now().microsecondsSinceEpoch,
      'affirmations': affirmations,
    });
  }
}
