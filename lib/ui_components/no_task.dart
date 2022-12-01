import 'package:flutter_login_homwork3/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class NoTask extends StatelessWidget {
  const NoTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(flex: 2,),
        SizedBox(
          width: double.infinity,
          height: 240,
          child: Assets.images.checklist.image(),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child:  Text("What do you want to do today?", style: TextStyle(fontSize: 16, color: Colors.white,),),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(60, 0, 60, 20),
          child:  Text("Tap + to add your tasks", style: TextStyle(fontSize: 14, color: Colors.white,),),
        ),
        const Spacer(flex: 3,),
      ],
    );
  }
}
