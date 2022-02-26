import 'package:app/Screens/job_listbox.dart';
import 'package:app/Screens/new_job.dart';
import 'package:app/Screens/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Listing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      body: Padding(
        padding: const EdgeInsets.only(top: 79, left: 27),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Welcome",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Hammad Khan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            top: 19, right: 27, bottom: 16),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color(0xFF1E1C24),
                            border: Border.all(
                              color: const Color(0xFF5D5D67),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 15,
                              left: 15,
                              child: SvgPicture.asset('images/search.svg'),
                              height: 18.75,
                              width: 18.75,
                            ),
                            const TextField(
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 55),
                                    hintText: "Search Keyword",
                                    hintStyle:
                                        TextStyle(color: Color(0xFF8F8F9E)),
                                    border: InputBorder.none)),
                          ],
                        ),
                      ),
                      Job_BoxList(
                          onPress: onSignPress,
                          label: "Flutter Developer Required"),
                      Job_BoxList(
                          onPress: onSignPress,
                          label: "Flutter Developer Required"),
                      Job_BoxList(
                          onPress: onSignPress,
                          label: "Flutter Developer Required"),
                      Job_BoxList(
                          onPress: onSignPress,
                          label: "Flutter Developer Required"),
                      Job_BoxList(
                          onPress: onSignPress,
                          label: "Flutter Developer Required"),
                      Job_BoxList(
                          onPress: onSignPress,
                          label: "Flutter Developer Required"),
                      Job_BoxList(
                          onPress: onSignPress,
                          label: "Flutter Developer Required"),
                    ]),
              ),
              Positioned(
                  top: 12,
                  right: 29,
                  child: GestureDetector(
                      onTap: (() {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => SignIn()));
                      }),
                      child: Image(image: AssetImage('images/Back.png')))),
              Positioned(
                bottom: 25,
                right: 27,
                child: GestureDetector(
                  onTap: (() {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => New_Job()));
                  }),
                  child: SvgPicture.asset(
                    'images/plusButton.svg',
                    height: 74,
                    width: 74,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void onSignPress() {}
}
