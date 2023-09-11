import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.onTap, required this.text, Key? key})
      : super(key: key);
  final VoidCallback? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        width: double.infinity,
        height: 50,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
