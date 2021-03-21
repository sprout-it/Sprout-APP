import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'route.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';
  // final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: RoutePage(),
    );
  }
}
