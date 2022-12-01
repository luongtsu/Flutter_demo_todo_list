import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/gen/assets.gen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const SizedBox(
          width: double.infinity,
          child: Text('Profile', textAlign: TextAlign.center,),
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
          child: const Text("Profile"),
        ),
      ),
    );
  }
}

