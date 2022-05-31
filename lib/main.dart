import 'package:flutter/material.dart';
import 'package:postest7_123_zulfikarrm/sub_main.dart';
import 'package:postest7_123_zulfikarrm/alert.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
