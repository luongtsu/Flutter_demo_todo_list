import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/models/onboard_entry.dart';
import 'package:flutter_login_homwork3/ui_components/no_task.dart';
import 'package:flutter_login_homwork3/ui_components/tabbar_item.dart';
import 'package:flutter_login_homwork3/utils/constant.dart';
import 'package:flutter_login_homwork3/gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SizedBox(
          width: double.infinity,
          child: Text('Index', textAlign: TextAlign.center,),
        ),
        leading:Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: IconButton(
            onPressed: () {
              // TODO: do smthing
            },
            icon: Icon(Icons.sort),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // TODO: do smthing
            },
            child: SizedBox(
              width: 40,
              height: 40,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.all(0.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Assets.images.whitehair.image(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 20,),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: NoTask(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: smthing
        },
        child: Icon(Icons.add),
        backgroundColor: Constant.purple,//icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //floating action button position to center

      bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
        color:Constant.barBackground,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 0, //notche margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () { _onItemTapped(0);},
              child: const TabItemWithText("Home", Icons.home),
            ),
            InkWell(
              onTap: () { _onItemTapped(0);},
              child: const TabItemWithText("Calendar", Icons.calendar_month),
            ),
            SizedBox(width: 60,),
            InkWell(
              onTap: () { _onItemTapped(0);},
              child: const TabItemWithText("Focuse", Icons.access_time_outlined),
            ),
            InkWell(
              onTap: () { _onItemTapped(0);},
              child: const TabItemWithText("Profile", Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}

