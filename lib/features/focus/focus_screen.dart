import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/gen/assets.gen.dart';

class FocusScreen extends StatefulWidget {
  const FocusScreen({Key? key}) : super(key: key);

  @override
  State<FocusScreen> createState() => _FocusScreenState();
}

class _FocusScreenState extends State<FocusScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const SizedBox(
          width: double.infinity,
          child: Text('Focus', textAlign: TextAlign.center,),
        ),
        leading:Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          child: IconButton(
            onPressed: () {
              // TODO: do smthing
            },
            icon: const Icon(Icons.sort),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: const Text("Focus"),
        ),
      ),
    );
  }
}

