import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_homwork3/gen/assets.gen.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: goto next screen
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
              Text("UpTodo", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white),),
            ],
          ) ,
        ),
      ),
    );
  }
}
