import 'package:flutter/material.dart';

class InfoDisplayRow extends StatefulWidget {
  const InfoDisplayRow(this._leftIcon, this._title, this._detailsText, {Key? key}) : super(key: key);

  final String _title;
  final String _detailsText;
  final IconData _leftIcon;

  @override
  State<InfoDisplayRow> createState() => _InfoDisplayRowState();
}

class _InfoDisplayRowState extends State<InfoDisplayRow> {

  late String _title;
  late String _detailsText;
  late IconData _leftIcon;

  @override
  void initState() {
    super.initState();

    _leftIcon = widget._leftIcon;
    _title = widget._title;
    _detailsText = widget._detailsText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(_leftIcon),
            SizedBox(width: 8),
            Text(_title, style: TextStyle(fontSize: 14)),
            Spacer(),
            Text(_detailsText, style: TextStyle(color: Colors.grey, fontSize: 14)),
            SizedBox(width: 8),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
