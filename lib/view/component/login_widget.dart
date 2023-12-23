import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({Key? key, required this.hintText, required TextEditingController controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
      ),
      style: TextStyle(color: Colors.black),
    );
  }
}
