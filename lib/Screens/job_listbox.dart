import 'package:app/Screens/edit_job.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Job_BoxList extends StatelessWidget {
  final String label;
  final GestureTapCallback onPress;

  const Job_BoxList({required this.onPress, required this.label});
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(top: 11, right: 27),
            width: 360,
            height: 102,
            decoration: BoxDecoration(
                color: const Color(0xFF201E27),
                borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 22),
                  child: Text("Flutter Developer Required",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 35, left: 25),
                  child: Text("Karachi, Pakistan",
                      style: TextStyle(
                        height: 2.7,
                        color: Colors.white,
                        fontSize: 15,
                      )),
                ),
                Positioned(
                  right: 63,
                  top: 40,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Edit_job()));
                    },
                    child: SvgPicture.asset(
                      'images/edit.svg',
                      width: 22,
                      height: 22,
                    ),
                  ),
                ),
                Positioned(
                  right: 14,
                  top: 39,
                  child: SvgPicture.asset(
                    'images/delete.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            )),
      ),
    ]);
  }
}
