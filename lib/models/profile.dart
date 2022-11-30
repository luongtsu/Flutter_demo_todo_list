class UserProfile {
  String avatarImageName = "assets/images/whitehair.png";
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