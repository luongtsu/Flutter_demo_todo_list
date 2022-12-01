import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/models/profile.dart';
import 'package:flutter_login_homwork3/ui_components/password_text_form_field_with_title.dart';
import 'package:flutter_login_homwork3/ui_components/text_form_field_with_title.dart';
import 'package:flutter_login_homwork3/utils/util.dart';

import '../../utils/constant.dart';
import '../main/dashboard_screen.dart';

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
    _tfUserNameController.addListener(() {
      validateInputData();
    });

    _tfPasswordController.addListener(() {
      validateInputData();
    });
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

  void validateInputData() {
    setState(() {
      if (_tfUserNameController.text.isEmpty || _tfPasswordController.text.isEmpty) {
        _signinEnabled = false;
      } else {
        _signinEnabled = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
                ),
                Spacer(),
              ],
            ),
            const SizedBox(height: 20),
            TextFormFieldWithTitle("Username", "Enter your Username", TextInputType.emailAddress, _tfUserNameController),
            PasswordTextFormFieldWithTitle("Password", "Enter your Password", TextInputType.visiblePassword, _tfPasswordController),
            const SizedBox(height: 50),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: _signinEnabled ? Constant.purple : Constant.purple.withAlpha(100),
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
