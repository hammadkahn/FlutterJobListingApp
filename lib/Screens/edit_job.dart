import 'package:app/Screens/listing.dart';
import 'package:app/Screens/new_job.dart';
import 'package:app/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Edit_job extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final textcontroller = useTextEditingController(
        text:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quis eget in lectus sit amet pellentesque eleifend tellus neque. Praesent sagittis ultricies volutpat turpis hendrerit nulla ultricies massa elementum. Convallis gravida enim erat enim commodo praesent malesuada facilisis. Potenti orci amet, dui nunc aliquet pellentesque sit nibh scelerisque.');

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
                          hintText: "Flutter Developer",
                          hintStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
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
                        style: TextStyle(color: Colors.white),
                        controller: textcontroller,
                        maxLines: null,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(
                              left: 25,
                              top: 25,
                              right: 10,
                            ),
                            hintText: 'edit',
                            hintStyle: TextStyle(
                                color: Colors.white,
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
                        label: 'Submit Job', onPress: onSignPress)),
              )
            ],
          ),
        ));
  }
}

void onSignPress() {}
