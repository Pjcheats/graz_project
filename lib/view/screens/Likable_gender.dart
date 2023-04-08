import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graz_project/view/screens/Login.dart';
import 'package:graz_project/view/screens/tag.dart';
import 'package:graz_project/view/screens/zodiac.dart';
import 'package:page_transition/page_transition.dart';

class LikeGender_screen extends StatefulWidget {
  LikeGender_screen({super.key});

  @override
  _LikeGender_screenState createState() => _LikeGender_screenState();
}

class _LikeGender_screenState extends State<LikeGender_screen> {

  int _index = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "What Gender are you",
                        style: GoogleFonts.alata(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "Intersted in?",
                        style: GoogleFonts.alata(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(),
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 1;
                            });
                          },
                          child: Container(
                            height: 200,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/male.png',
                                    color: _index == 1
                                        ? Colors.blue
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "Male",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _index == 1
                                          ? Colors.blue
                                          : Colors.white24,
                                      fontSize: 25,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _index = 2;
                            });
                          },
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/femenine.png',
                                    color: _index == 2
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "Female",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _index == 2
                                          ? Colors.pink
                                          : Colors.white24,
                                      fontSize: 25,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                             _index = 3;
                            });
                          },
                          child: Container(
                            height: 200,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/gender.png',
                                    color: _index == 3
                                        ? Colors.greenAccent
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "Transegender",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _index == 3
                                          ? Colors.greenAccent
                                          : Colors.white24,
                                      fontSize: 25,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: zodic_screen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width / 1.2,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Next",
                            style: GoogleFonts.alata(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
