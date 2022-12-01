import 'package:flutter/material.dart';

class TabItemWithText extends StatelessWidget {
  const TabItemWithText(this._title, this._iconData, this._isSelected, {Key? key}) : super(key: key);

  final String _title;
  final IconData _iconData;
  final bool _isSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding (
          padding: EdgeInsets.all(8),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(_iconData, color: _isSelected ? Colors.white : Colors.white60,),
                const SizedBox(height: 4,),
                Text(_title, style: TextStyle(fontSize: 10, color: _isSelected ? Colors.white : Colors.white60),),
              ],
          ),
        ),
    );
  }
}
