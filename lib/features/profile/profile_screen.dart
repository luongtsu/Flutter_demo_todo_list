import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/gen/assets.gen.dart';

import '../../services/auth_service.dart';
import '../../utils/constant.dart';

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
          child: Padding(
            padding: EdgeInsets.all(20),
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
                    AuthService().signOut();
                  },
                  child: Text(
                    "SIGN OUT",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
                ),
              ),
            ),
          ),
        ),
      );
  }
}

