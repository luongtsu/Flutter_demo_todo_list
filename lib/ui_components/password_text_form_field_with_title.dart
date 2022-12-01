import 'package:flutter/material.dart';

class PasswordTextFormFieldWithTitle extends StatefulWidget {
  const PasswordTextFormFieldWithTitle(this._title, this._hintText, this._inputType, this._tfController, {Key? key}) : super(key: key);

  final String _title;
  final String _hintText;
  final TextEditingController _tfController;
  final TextInputType _inputType;

  @override
  State<PasswordTextFormFieldWithTitle> createState() => _PasswordTextFormFieldWithTitleState();
}

class _PasswordTextFormFieldWithTitleState extends State<PasswordTextFormFieldWithTitle> {

  late String _title;
  late String _hintText;
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
            child: Text(_title, style: TextStyle(fontSize: 16)),
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

