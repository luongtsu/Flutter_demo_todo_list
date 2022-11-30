import 'package:flutter_login_homwork3/gen/assets.gen.dart';

class UserProfile {
  String avatarImageName = Assets.images.whitehair.path;
  String userName = "john@gmail.com";
  String password = "123456";
  String nickName = "Nickname";
  String email = "example@gmail.com";
  String gender = "Female";
  DateTime birthDay = DateTime.now();
  String phoneNumber = "098888888";
  String address = "Hanoi";

  static UserProfile userForEmail(String email) {
    UserProfile currentUser = UserProfile();
    currentUser.email = email;
    return currentUser;
  }
}