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

/// This is the main application widget.
class Main extends StatelessWidget {
  final Future<FirebaseApp> fb = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RoutePage(),
    );
  }
}

// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:sprout/screens/auth/auth.dart';
// import 'package:flutter/material.dart';
// import 'route.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(App());
// }

// class App extends StatefulWidget {
//   App({Key key}) : super(key: key);

//   @override
//   _AppState createState() => _AppState();
// }

// class _AppState extends State<App> {
//   @override
//   Widget build(BuildContext context) {
//     return RoutePage();
//   }
// }
