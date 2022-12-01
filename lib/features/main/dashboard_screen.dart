import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/models/profile.dart';
import 'package:flutter_login_homwork3/ui_components/info_display_row.dart';

import 'update_info_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen(this._userProfile, {Key? key}) : super(key: key);

  final UserProfile _userProfile;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  late UserProfile _userProfile;

  @override
  void initState() {
    super.initState();
    _userProfile = widget._userProfile;
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onChangeInformation() {
    Navigator.push(context, MaterialPageRoute<void>(
        builder: (BuildContext context) {
          return UpdateInfoScreen(_userProfile);
        })
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        primary: false,
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40,),
              SizedBox(
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.all(0.5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(_userProfile.avatarImageName),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_userProfile.nickName, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                        Text(_userProfile.userName, style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ],
                    ),
                  ],
                ),
              ),
              InfoDisplayRow(Icons.person, "Gender", _userProfile.gender),
              InfoDisplayRow(Icons.person, "Birthday", _userProfile.birthDay.toString().substring(0, 9)),
              InfoDisplayRow(Icons.person, "Email", _userProfile.email),
              InfoDisplayRow(Icons.person, "Phone Number", _userProfile.phoneNumber),
              InfoDisplayRow(Icons.person, "Address", _userProfile.address),
              Spacer(),
              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                width: double.infinity,
                child:  ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black87,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: onChangeInformation,
                      child: Text("Change information", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}