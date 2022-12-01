import 'package:flutter/material.dart';

class TabItemWithText extends StatelessWidget {
  const TabItemWithText(this._title, this._iconData, {Key? key}) : super(key: key);

  final String _title;
  final IconData _iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
          child: Icon(_iconData, color: Colors.white,),
        ),
        Text(_title, style: const TextStyle(fontSize: 12, color: Colors.white),),
      ],
    );
  }
}
