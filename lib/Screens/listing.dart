import 'package:app/Screens/job_listbox.dart';
import 'package:flutter/material.dart';

class Listing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(top: 79, left: 27),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Welcome",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Text(
            "Hammad Khan",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 19, right: 27),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color(0xFF1E1C24),
                border: Border.all(
                  color: const Color(0xFF5D5D67),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15)),
            child: const TextField(
                style: TextStyle(color: Colors.white, fontSize: 15),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 55),
                    hintText: "Search Keyword",
                    hintStyle: TextStyle(color: Color(0xFF8F8F9E)),
                    border: InputBorder.none)),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Job_BoxList(onPress: onSignPress, label: "Flutter")
        ]),
      ),
    );
  }

  void onSignPress() {}
}
