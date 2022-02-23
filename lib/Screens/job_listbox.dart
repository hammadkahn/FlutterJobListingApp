import 'package:flutter/material.dart';

class Job_BoxList extends StatelessWidget {
  final String label;
  final GestureTapCallback onPress;

  const Job_BoxList({required this.onPress, required this.label});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xFF201E27),
                border: Border.all(
                  color: const Color(0xFF5D5D67),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15)),
            child: GestureDetector(
              onTap: onPress,
              child: Text(label),
            ),
          ),
        ),
      ],
    );
  }
}
