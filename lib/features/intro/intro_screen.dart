import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/features/intro/onboard_screen.dart';
import 'package:flutter_login_homwork3/gen/assets.gen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute<void>(
            builder: (BuildContext context) {
              return const OnboardScreen();
            }),
        );
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: Assets.images.todoIcon.image(),
              ),
              const Text("UpTodo", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white),),
            ],
          ) ,
        ),
      ),
    );
  }
}
