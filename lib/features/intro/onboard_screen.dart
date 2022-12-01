import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/features/home/home_screen.dart';
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
    if (_currentIndex < 2) {
      setState(() {
        _currentIndex += 1;
      });
    } else {
      showHome();
    }

  }

  void showHome() {
    Navigator.pushReplacement(context, MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return const HomeScreen();
        }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40,),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    showHome();
                  },
                  child: const Text("SKIP", style: TextStyle(color: Colors.grey),),
                ),
                const Spacer(),
              ],
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: _entries[_currentIndex].displayImage,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 3,
                child: Row(
                  children: [
                    const Spacer(),
                    Container(
                      width: 16,
                      color: _currentIndex == 0 ? Colors.white : Colors.white60,
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 16,
                      color: _currentIndex == 1 ? Colors.white : Colors.white60,
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 16,
                      color: _currentIndex == 2 ? Colors.white : Colors.white60,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child:  Text(_entries[_currentIndex].title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.white),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
                      child:  Text(_entries[_currentIndex].description, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: Colors.white70,), textAlign: TextAlign.center,),
                    ),
                    const Spacer(),
                  ],
                ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    showPrevious();
                  },
                  child: const Text("BACK", style: TextStyle(color: Colors.grey),),
                ),
                const Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Constant.purple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    //textStyle: const TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    showNext();
                  },
                  child: const Text('NEXT'),
                ),
              ],
            ),
            const SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
