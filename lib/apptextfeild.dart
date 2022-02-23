import 'package:flutter/material.dart';

class AppTextfeild extends StatelessWidget {
  final String placeholder;

  const AppTextfeild({required this.placeholder});
  @override
  Widget build(BuildContext context) {
    

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xFF1E1C24),
          border: Border.all(
            color: const Color(0xFF5D5D67),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15)),
      child:  TextField(
          style: const TextStyle(color: Colors.white, fontSize: 15),
          decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: const TextStyle(color: Color(0xFF8F8F9E)),
              border: InputBorder.none)),
    );
  }
}
