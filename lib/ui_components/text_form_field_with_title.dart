import 'package:flutter/material.dart';

class TextFormFieldWithTitle extends StatefulWidget {
  const TextFormFieldWithTitle(this._title, this._hintText, this._inputType, this._tfController, {Key? key}) : super(key: key);

  final String _title;
  final String _hintText;
  final TextEditingController _tfController;
  final TextInputType _inputType;

  @override
  State<TextFormFieldWithTitle> createState() => _TextFormFieldWithTitleState();
}

class _TextFormFieldWithTitleState extends State<TextFormFieldWithTitle> {

  late String _title;
  late String _hintText;
  late TextEditingController _tfController;
  late TextInputType _inputType;

  @override
  void initState() {
    super.initState();
    _title = widget._title;
    _hintText = widget._hintText;
    _tfController = widget._tfController;
    _inputType = widget._inputType;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            child: Text(_title, style: const TextStyle(fontSize: 16)),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            child: TextFormField(
              controller: _tfController,
              keyboardType: _inputType,
              decoration: InputDecoration(
                border:  const OutlineInputBorder(),
                hintText: _hintText,
                hintStyle: const TextStyle(color: Colors.white30),
                fillColor: Colors.white60,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: const BorderSide(
                    color: Colors.white60,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
