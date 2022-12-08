import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_login_homwork3/features/main/main_menu_screen.dart';
import 'package:flutter_login_homwork3/features/signin/sign_in_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {

  handleAuthState() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return const MainMenuScreen();
        } else {
          return const SignInScreen();
        }
      },
    );
  }

  signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn(
      scopes: <String>["email"],
    ).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    // Once signed in, return the user credential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // Sign out
  signOut() {
    FirebaseAuth.instance.signOut();
  }
}