import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graz_project/view/screens/Login.dart';
import 'package:graz_project/view/screens/home_screen.dart';
import 'package:graz_project/view/screens/tag.dart';
import 'package:page_transition/page_transition.dart';

class zodic_screen extends StatefulWidget {
  zodic_screen({super.key});

  @override
  _zodic_screenState createState() => _zodic_screenState();
}

class _zodic_screenState extends State<zodic_screen> {
  bool _isPressed1 = false;
  bool _isPressed2 = false;
  bool _isPressed3 = false;
  bool _isPressed4 = false;
  bool _isPressed5 = false;
  bool _isPressed6 = false;
  bool _isPressed7 = false;
  bool _isPressed8 = false;
  bool _isPressed9 = false;
  bool _isPressed10 = false;
  bool _isPressed11 = false;
  bool _isPressed12 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
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
                        "What Zodiac are you",
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
                              _isPressed1 = !_isPressed1;
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
                                    'assets/aries.png',
                                    color: _isPressed1
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "Aries",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _isPressed1
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed2 = !_isPressed2;
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
                                    'assets/taurus.png',
                                    color: _isPressed2
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "Taurus",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _isPressed2
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed3 = !_isPressed3;
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
                                    'assets/gemini.png',
                                    color: _isPressed3
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "Gemini",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _isPressed3
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed4 = !_isPressed4;
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
                                    'assets/cancer.png',
                                    color: _isPressed4
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "Cancer",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _isPressed4
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed5 = !_isPressed5;
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
                                    'assets/leo.png',
                                    color: _isPressed5
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "Leo",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _isPressed5
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed6 = !_isPressed6;
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
                                    'assets/virgo.png',
                                    color: _isPressed6
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "virgo",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _isPressed6
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed7 = !_isPressed7;
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
                                    'assets/libra.png',
                                    color: _isPressed7
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "libra",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _isPressed7
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed8 = !_isPressed8;
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
                                    'assets/scorpius.png',
                                    color: _isPressed8
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "scorpius",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _isPressed8
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed9 = !_isPressed9;
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
                                    'assets/sagittarius.png',
                                    color: _isPressed9
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "sagittarius",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _isPressed9
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed10 = !_isPressed10;
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
                                    'assets/capricorn.png',
                                    color: _isPressed10
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "capricornus",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _isPressed10
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed11 = !_isPressed11;
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
                                    'assets/aquarius.png',
                                    color: _isPressed11
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "Aquarius",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _isPressed11
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed12 = !_isPressed12;
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
                                    'assets/pisces.png',
                                    color: _isPressed12
                                        ? Colors.pink
                                        : Colors.white24,
                                  ),
                                  Text(
                                    "Pisces",
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color: _isPressed12
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
                      height: 50,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: HomePage(),
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
                    ),
                    SizedBox(
                      height: 50,
                    ),
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
