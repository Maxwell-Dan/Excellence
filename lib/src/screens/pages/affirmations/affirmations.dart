import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:excellence/src/screens/Theme/excellence_theme.dart';
import 'package:excellence/src/screens/pages/affirmations/affirmation_template.dart';
import 'package:excellence/src/screens/pages/affirmations/affirmations_pad.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

FirebaseAuth _auth = FirebaseAuth.instance;
String _user = _auth.currentUser!.uid;

class Affirmations extends StatefulWidget {
  const Affirmations({Key? key}) : super(key: key);

  @override
  State<Affirmations> createState() => _AffirmationsState();
}

class _AffirmationsState extends State<Affirmations> {
  final Stream<QuerySnapshot> _documentStream = FirebaseFirestore.instance
      .collection('users')
      .doc(_user)
      .collection('affirmations')
      .orderBy('timeStamp', descending: true)
      .snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title:
              Text('Affirmations', style: ExcellenceTheme.textTheme.headline1)),
      body: StreamBuilder(
          stream: _documentStream,
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return const Center(child: Text('Something went wrong'));
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            return PageView(
                // scrollDirection: Axis.horizontal,
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<dynamic, dynamic> data =
                  document.data()! as Map<dynamic, dynamic>;
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: AffirmationsTemplate(
                  affirmations: data['affirmations'] ?? '',
                ),
              );
            }).toList());
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AffirmationPad()));
          },
          child: const Icon(Icons.edit_attributes_outlined)),
    );
  }
}
