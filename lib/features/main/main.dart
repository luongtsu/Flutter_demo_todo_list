import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/features/calendar/calendar_screen.dart';
import 'package:flutter_login_homwork3/features/focus/focus_screen.dart';
import 'package:flutter_login_homwork3/features/profile/profile_screen.dart';
import 'package:flutter_login_homwork3/features/signin/sign_in_screen.dart';
import 'package:flutter_login_homwork3/services/auth_service.dart';
import '../../ui_components/tabbar_item.dart';
import '../../utils/constant.dart';
import '../intro/intro_screen.dart';
import '../home/home_screen.dart';
import 'package:flutter_login_homwork3/gen/assets.gen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white
        ),
        backgroundColor: Colors.black,
        primarySwatch: Colors.blue,
      ),
      home: AuthService().handleAuthState(),
    );
  }
}