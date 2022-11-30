import 'package:flutter_login_homwork3/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class OnboardEntry {
  String title = "";
  String description = "";
  late Image displayImage;
  
  OnboardEntry(this.displayImage, this.title, this.description);
  
  static List<OnboardEntry> defaultEntries = [
    OnboardEntry(Assets.images.manageTask.image(), "Manage you tasks", "You can easily manage all of your daily tasks in DoMe for free"),
    OnboardEntry(Assets.images.dailyRoutine.image(), "Create daily routine", "In Uptodo  you can create your personalized routine to stay productive"),
    OnboardEntry(Assets.images.organizeTask.image(), "Organize your tasks", "You can organize your daily tasks by adding your tasks into separate categories"),
  ];
}