import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app_button.dart';
import 'listing.dart';

class New_Job extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFF191720),
        body: Padding(
          padding: const EdgeInsets.only(top: 95, left: 27, right: 27),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Listing()));
                      },
                      child: SvgPicture.asset("images/Back_2.svg")),
                  const Padding(padding: EdgeInsets.only(left: 44)),
                  const Text(
                    "Edit Job",
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 25),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 46)),
              Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF1E1C24),
                    border: Border.all(
                      color: const Color(0xFF5D5D67),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                child: Container(
                  height: 80,
                  child: const TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 47, top: 25),
                          hintText: "Enter position name",
                          hintStyle: TextStyle(
                              color: Color(0xFF8F8F9E),
                              fontWeight: FontWeight.w400),
                          border: InputBorder.none)),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 25),
                  decoration: BoxDecoration(
                      color: const Color(0xFF1E1C24),
                      border: Border.all(
                        color: const Color(0xFF5D5D67),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    height: 374,
                    child: TextField(
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: 25,
                              top: 25,
                              right: 10,
                            ),
                            hintText: 'Describe Requirement...',
                            hintStyle: TextStyle(
                                color: Color(0xFF8F8F9E),
                                fontWeight: FontWeight.w400),
                            border: InputBorder.none)),
                  )),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 59),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Listing()));
                    },
                    child: const AppButton(
                        label: 'Update Job', onPress: onSignPress)),
              )
            ],
          ),
        ));
  }
}

void onSignPress() {}
