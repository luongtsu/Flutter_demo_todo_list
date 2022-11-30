import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/models/onboard_entry.dart';
import 'package:flutter_login_homwork3/utils/constant.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  int _currentIndex = 0;
  final List<OnboardEntry> _entries = OnboardEntry.defaultEntries;

  void showPrevious() {
    setState(() {
      _currentIndex = max(_currentIndex - 1, 0);
    });
  }

  void showNext() {
    setState(() {
      _currentIndex = min(_currentIndex + 1, 2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                ),
                Spacer(),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child:  Text("Welcome to UpTodo", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
              child:  Text("Please login to your account or create new account to continue", style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white70,), textAlign: TextAlign.center,),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Constant.purple,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        showNext();
                      },
                      child: Text("LOG IN", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),)
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: Container(
                  padding: EdgeInsets.all(0.5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Constant.purple),
                  ),
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        showNext();
                      },
                      child: Text("CREATE ACCOUNT", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),)
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
