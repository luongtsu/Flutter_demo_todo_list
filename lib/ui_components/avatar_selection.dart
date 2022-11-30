import 'package:flutter/material.dart';

class AvatarSelection extends StatefulWidget {
  const AvatarSelection(this._imageName, {Key? key}) : super(key: key);

  final String _imageName;

  @override
  State<AvatarSelection> createState() => _AvatarSelectionState();
}

class _AvatarSelectionState extends State<AvatarSelection> {

  late String _imageName;

  @override
  void initState() {
    super.initState();
    _imageName = widget._imageName;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(0.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(75),
                  border: Border.all(color: Colors.grey),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(75),
                  child: Image.asset(_imageName),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.92, 0.92),
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(0.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey),
                    color: Colors.white,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: Container(
                        child: Icon(Icons.upload),
                      ) ,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
