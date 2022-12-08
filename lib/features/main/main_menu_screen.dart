import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/features/calendar/calendar_screen.dart';
import 'package:flutter_login_homwork3/features/focus/focus_screen.dart';
import 'package:flutter_login_homwork3/features/profile/profile_screen.dart';
import 'package:flutter_login_homwork3/features/signin/sign_in_screen.dart';
import '../../ui_components/tabbar_item.dart';
import '../../utils/constant.dart';
import '../intro/intro_screen.dart';
import '../home/home_screen.dart';
import 'package:flutter_login_homwork3/gen/assets.gen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({Key? key}) : super(key: key);

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (_pageController.hasClients) {
      _pageController.animateToPage(
          _selectedIndex,
          duration: const Duration(microseconds: 500),
          curve: Curves.easeInOut);
    }
  }

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: _pageController,
        children: const [
          HomeScreen(),
          CalendarScreen(),
          FocusScreen(),
          ProfileScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: smthing
        },
        backgroundColor: Constant.purple,
        child: const Icon(Icons.add),//icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center
      bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
        color:Constant.barBackground,
        shape: const CircularNotchedRectangle(), //shape of notch
        notchMargin: 0, //notche margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () { _onItemTapped(0);},
              child: TabItemWithText("Home", Icons.home, _selectedIndex == 0),
            ),
            InkWell(
              onTap: () { _onItemTapped(1);},
              child: TabItemWithText("Calendar", Icons.calendar_month, _selectedIndex == 1),
            ),
            const SizedBox(width: 60,),
            InkWell(
              onTap: () { _onItemTapped(2);},
              child: TabItemWithText("Focus", Icons.access_time_outlined, _selectedIndex == 2),
            ),
            InkWell(
              onTap: () { _onItemTapped(3);},
              child: TabItemWithText("Profile", Icons.person, _selectedIndex == 3),
            ),
          ],
        ),
      ),
    );
  }
}
