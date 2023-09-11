import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({this.onChanged, this.hintText, Key? key})
      : super(key: key);
  final String? hintText;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hintText == 'Password' ? true : false,
      validator: (data) {
        if (data!.isEmpty) {
          return 'Please enter some text';
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      decoration: const InputDecoration(
        hintText: '',
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
