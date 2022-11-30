import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/models/onboard_entry.dart';
import 'package:flutter_login_homwork3/utils/constant.dart';
import 'package:flutter_login_homwork3/gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: double.infinity,
          child: Text('Index', textAlign: TextAlign.center,),
        ),
        leading: IconButton(
          onPressed: () {
            // TODO: do smthing
          },
          icon: Icon(Icons.sort),
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
          SizedBox(width: 10,),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
        color:Colors.grey,
        shape: CircularNotchedRectangle(), //shape of notch
        notchMargin: 0, //notche margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home, color: Colors.white, ), onPressed: () { _onItemTapped(0);},),
            IconButton(icon: Icon(Icons.calendar_month, color: Colors.white,), onPressed: () {_onItemTapped(1);},),
            SizedBox(width: 60,),
            IconButton(icon: Icon(Icons.access_time_outlined, color: Colors.white,), onPressed: () { _onItemTapped(2);},),
            IconButton(icon: Icon(Icons.person, color: Colors.white,), onPressed: () { _onItemTapped(3);},),
          ],
        ),
      ),
    );
  }
}
