import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:excellence/src/screens/Theme/excellence_theme.dart';
import 'package:excellence/src/screens/pages/gratittude/gratitude_pad.dart';
import 'package:excellence/src/screens/pages/gratittude/gratitude_template.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

FirebaseAuth _auth = FirebaseAuth.instance;
String _user = _auth.currentUser!.uid;

class Gratitude extends StatefulWidget {
  const Gratitude({Key? key}) : super(key: key);

  @override
  State<Gratitude> createState() => _GratitudeState();
}

class _GratitudeState extends State<Gratitude> {
  final Stream<QuerySnapshot> _documentStream = FirebaseFirestore.instance
      .collection('users')
      .doc(_user)
      .collection('gratitude')
      .orderBy('timeStamp', descending: true)
      .snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text('Gratitude', style: ExcellenceTheme.textTheme.headline1)),
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
                //  scrollDirection: Axis.horizontal,
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<dynamic, dynamic> data =
                  document.data()! as Map<dynamic, dynamic>;
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: GratitudeTemplate(
                    title: data['title'] ?? '',
                    gratitude1: data['gratitude1'] ?? '',
                    gratitude2: data['gratitude2'] ?? ''),
              );
            }).toList());
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const GratitudePad()));
          },
          child: const Icon(Icons.edit_attributes_outlined)),
    );
  }
}
