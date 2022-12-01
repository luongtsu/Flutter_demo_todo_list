import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/models/profile.dart';
import 'package:flutter_login_homwork3/ui_components/avatar_selection.dart';
import 'package:flutter_login_homwork3/ui_components/password_text_form_field_with_title.dart';
import 'package:flutter_login_homwork3/ui_components/text_form_field_with_title.dart';
import 'package:flutter_login_homwork3/utils/util.dart';

class UpdateInfoScreen extends StatefulWidget {
  const UpdateInfoScreen(this._userProfile, {Key? key}) : super(key: key);

  final UserProfile _userProfile;

  @override
  State<UpdateInfoScreen> createState() => _UpdateInfoScreenState();
}

class _UpdateInfoScreenState extends State<UpdateInfoScreen> {

  late final UserProfile _userProfile;

  final _tfUserNameController = TextEditingController();
  final _tfPasswordController = TextEditingController();
  final _tfGenderController = TextEditingController();
  final _tfBirthdayController = TextEditingController();
  final _tfPhoneNumberController = TextEditingController();
  final _tfAddressController = TextEditingController();

  bool _updateEnabled = false;

  @override
  void initState() {
    super.initState();

    _userProfile = widget._userProfile;
    _tfUserNameController.text = _userProfile.email;
    _tfPasswordController.text = _userProfile.password;
    _tfGenderController.text = _userProfile.gender;
    _tfBirthdayController.text = _userProfile.birthDay.toString().substring(0, 9);
    _tfPhoneNumberController.text = _userProfile.phoneNumber;
    _tfAddressController.text = _userProfile.address;

    _tfUserNameController.addListener(() {
      onUpdateData();
    });

    _tfPasswordController.addListener(() {
      onUpdateData();
    });

    _tfGenderController.addListener(() {
      onUpdateData();
    });

    _tfBirthdayController.addListener(() {
      onUpdateData();
    });

    _tfPhoneNumberController.addListener(() {
      onUpdateData();
    });

    _tfAddressController.addListener(() {
      onUpdateData();
    });
  }

  @override
  void dispose() {
    _tfUserNameController.dispose();
    _tfPasswordController.dispose();
    _tfGenderController.dispose();
    _tfBirthdayController.dispose();
    _tfPhoneNumberController.dispose();
    _tfAddressController.dispose();
    super.dispose();
  }

  void onUpdateData() {
      if (_tfUserNameController.text.isEmpty ||
          _tfPasswordController.text.isEmpty ||
          _tfGenderController.text.isEmpty ||
          _tfBirthdayController.text.isEmpty ||
          _tfPhoneNumberController.text.isEmpty ||
          _tfAddressController.text.isEmpty ||
          !Util.isEmailValid(_tfUserNameController.text)) {
        if (_updateEnabled == true) {
          setState(() {
            _updateEnabled = false;
          });
        }
      } else if (_updateEnabled == false) {
        setState(() {
          _updateEnabled = true;
        });
      }
  }

  void onUpdateInfo() {
    _userProfile.email = _tfUserNameController.text;
    _userProfile.password = _tfPasswordController.text;
    _userProfile.gender = _tfGenderController.text;
    _userProfile.birthDay = DateTime.now(); // TODO: do the convertion later
    _userProfile.phoneNumber = _tfPhoneNumberController.text;
    _userProfile.address = _tfAddressController.text;

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: 80,
              alignment: Alignment.bottomLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: [
                    AvatarSelection(_userProfile.avatarImageName),
                    const SizedBox(height: 20),
                    TextFormFieldWithTitle("Email", TextInputType.emailAddress, _tfUserNameController),
                    PasswordTextFormFieldWithTitle("Password", TextInputType.visiblePassword, _tfPasswordController),
                    TextFormFieldWithTitle("Gender", TextInputType.text, _tfGenderController),
                    TextFormFieldWithTitle("Birthday", TextInputType.datetime, _tfBirthdayController),
                    TextFormFieldWithTitle("Phone Number", TextInputType.phone, _tfPhoneNumberController),
                    TextFormFieldWithTitle("Address", TextInputType.text, _tfAddressController),
                    Container(
                      height: 50,
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        width: 120,
                        child:  ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black87,
                                backgroundColor: _updateEnabled ? Colors.black87 : Colors.grey,
                                textStyle: const TextStyle(fontSize: 16),
                              ),
                              onPressed: _updateEnabled ? onUpdateInfo : null,
                              child: Text("Update", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}