import 'package:flutter/material.dart';

class PasswordTextFormFieldWithTitle extends StatefulWidget {
  const PasswordTextFormFieldWithTitle(this._title, this._inputType, this._tfController, {Key? key}) : super(key: key);

  final String _title;
  final TextEditingController _tfController;
  final TextInputType _inputType;

  @override
  State<PasswordTextFormFieldWithTitle> createState() => _PasswordTextFormFieldWithTitleState();
}

class _PasswordTextFormFieldWithTitleState extends State<PasswordTextFormFieldWithTitle> {

  late String _title;
  late TextEditingController _tfController;
  late TextInputType _inputType;

  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
    });
  }

  @override
  void initState() {
    super.initState();
    _title = widget._title;
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
            child: Text(_title + ":", style: TextStyle(fontSize: 16)),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            child: TextFormField(
              controller: _tfController,
              keyboardType: _inputType,
              obscureText: _obscured,
              decoration: InputDecoration(
                border:  OutlineInputBorder(),
                hintText: _title,
                suffixIcon: GestureDetector(
                  onTap: _toggleObscured,
                  child: Icon(_obscured ? Icons.visibility_off : Icons.visibility),
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

