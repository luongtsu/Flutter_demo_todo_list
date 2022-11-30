import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/sign_in_screen.dart';

import 'features/intro/intro_screen.dart';
import 'features/onboard/onboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardScreen(),
    );
  }
}