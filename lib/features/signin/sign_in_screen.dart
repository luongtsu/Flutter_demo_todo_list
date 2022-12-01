import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/models/profile.dart';
import 'package:flutter_login_homwork3/utils/util.dart';

import '../home/dashboard_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  final _tfUserNameController = TextEditingController();
  final _tfPasswordController = TextEditingController();

  bool _obscured = false;
  bool _signinEnabled = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _tfUserNameController.dispose();
    _tfPasswordController.dispose();
    super.dispose();
  }

  void onSignIn() {
    if (_tfUserNameController.text.isNotEmpty && _tfPasswordController.text.isNotEmpty) {
      UserProfile currentUser = UserProfile.userForEmail(_tfUserNameController.text);
      Navigator.push(context, MaterialPageRoute<void>(
          builder: (BuildContext context) {
            return DashboardScreen(currentUser);
          })
      );
    } else {
      setState(() {
        _tfUserNameController.text = "";
        _tfPasswordController.text = "";
        _signinEnabled = false;
      });

      if (kDebugMode) {
        print("Wrong email/password.");
      }
    }
  }

  void didChangeEmail(String? value) {
    setState(() {
      String pattern =
          r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
          r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
          r"{0,253}[a-zA-Z0-9])?)*$";
      RegExp regex = RegExp(pattern);
      if (value == null || value.isEmpty || !regex.hasMatch(value)) {
        _signinEnabled = false;
      } else {
        validateInputData();
      }
    });
  }


  void didChangePassword(String? value) {
    setState(() {
      if (value == null || value.isEmpty) {
        _signinEnabled = false;
      } else {
        validateInputData();
      }
    });
  }

  void validateInputData() {
      if (_tfUserNameController.text.isEmpty || _tfPasswordController.text.isEmpty || !Util.isEmailValid(_tfUserNameController.text)) {
        _signinEnabled = false;
      } else {
        _signinEnabled = true;
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 40,),
            const Text("Log in", style: TextStyle(fontSize: 32)),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: TextFormField(
                controller: _tfUserNameController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  border:  OutlineInputBorder(),
                  hintText: "Email",
                ),
                onChanged: (val){
                  didChangeEmail(val);
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: TextFormField(
                controller: _tfPasswordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscured,
                decoration: InputDecoration(
                  border:  OutlineInputBorder(),
                  hintText: "Password",
                  suffixIcon: GestureDetector(
                    onTap: _toggleObscured,
                    child: Icon(_obscured ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
                onChanged: (val){
                  didChangePassword(val);
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: _signinEnabled ? Colors.black87 : Colors.grey,
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    onPressed: _signinEnabled ? onSignIn : null,
                    child: Text("LOG IN", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
