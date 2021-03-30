// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'route.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'route.dart';
import 'dart:async';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Main());
}

class Main extends StatelessWidget {
  final Future<FirebaseApp> fb = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RoutePage(),
    );
  }
}
