import 'package:TiendaDeRopa/views/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp().then((value) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    getUsers();
  }

  void getUsers() async {
    CollectionReference collectionReference =
        FirebaseFirestore.instance.collection("usuario");
    QuerySnapshot users = await collectionReference.get();

    if (users.docs.length != 0) {
      for (var doc in users.docs) {
        print(doc.data());
      }
    }
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
