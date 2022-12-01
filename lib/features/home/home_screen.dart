import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/ui_components/no_task.dart';
import 'package:flutter_login_homwork3/gen/assets.gen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SizedBox(
          width: double.infinity,
          child: Text('Home', textAlign: TextAlign.center,),
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
    );
  }
}

