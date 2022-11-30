import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/models/onboard_entry.dart';
import 'package:flutter_login_homwork3/utils/constant.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {

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
                TextButton(
                  onPressed: () {
                    // TODO
                  },
                  child: Text("SKIP", style: TextStyle(color: Colors.grey),),
                ),
                Spacer(),
              ],
            ),
            Center(
              child: SizedBox(
                width: 200,
                height: 200,
                child: _entries[_currentIndex].displayImage,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: SizedBox(
                height: 3,
                child: Row(
                  children: [
                    Spacer(),
                    Container(
                      width: 20,
                      color: _currentIndex == 0 ? Colors.white : Colors.white60,
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 20,
                      color: _currentIndex == 1 ? Colors.white : Colors.white60,
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: 20,
                      color: _currentIndex == 2 ? Colors.white : Colors.white60,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child:  Text(_entries[_currentIndex].title, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 20, 60, 20),
              child:  Text(_entries[_currentIndex].description, style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white70,), textAlign: TextAlign.center,),
            ),
            Spacer(),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    showPrevious();
                  },
                  child: Text("BACK", style: TextStyle(color: Colors.grey),),
                ),
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Constant.purple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    //textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    showNext();
                    print("$_currentIndex");
                  },
                  child: const Text('NEXT'),
                ),
              ],
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
