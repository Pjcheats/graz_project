import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graz_project/view/screens/Login.dart';
import 'package:graz_project/view/screens/home_screen.dart';
import 'package:graz_project/view/screens/zodiac.dart';
import 'package:page_transition/page_transition.dart';

class tag_screen extends StatefulWidget {
  tag_screen({super.key});

  @override
  _tag_screenState createState() => _tag_screenState();
}

class _tag_screenState extends State<tag_screen> {
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
  bool _isPressed13 = false;
  bool _isPressed14 = false;
  bool _isPressed16 = false;
  bool _isPressed17 = false;
  bool _isPressed18 = false;
  bool _isPressed19 = false;
  bool _isPressed20 = false;

  List a = [
    "collage,music,dance,travel,smoker,food,tattoo,circket,dog,drinks,gamer,workout,movies,kpop,comedy"
  ];

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
                        "What describe you",
                        style: GoogleFonts.alata(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "the best?",
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
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed1 = !_isPressed1;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: _isPressed1 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "collage",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed2 = !_isPressed2;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: _isPressed2 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "music",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed4 = !_isPressed4;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: _isPressed4 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "dance",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed5 = !_isPressed5;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: _isPressed5 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "travel",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed6 = !_isPressed6;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: _isPressed6 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "smoker",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed7 = !_isPressed7;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: _isPressed7 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "tattoo",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed8 = !_isPressed8;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: _isPressed8 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "cricket",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed9 = !_isPressed9;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color: _isPressed9 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "food",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed10 = !_isPressed10;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color:
                                  _isPressed10 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "dog",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed11 = !_isPressed11;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color:
                                  _isPressed11 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "drink",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed12 = !_isPressed12;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color:
                                  _isPressed12 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "gamer",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed13 = !_isPressed13;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color:
                                  _isPressed13 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "movies",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed14 = !_isPressed14;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color:
                                  _isPressed14 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "workout",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed19 = !_isPressed19;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color:
                                  _isPressed19 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "kpop",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed16 = !_isPressed16;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color:
                                  _isPressed16 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "comdey",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed17 = !_isPressed17;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color:
                                  _isPressed17 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "cosplay",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isPressed18 = !_isPressed18;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 80,
                            decoration: BoxDecoration(
                              color:
                                  _isPressed18 ? Colors.pink : Colors.white24,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Center(
                              child: Text(
                                "anime",
                                style: GoogleFonts.alata(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageTransition(
                            curve: Curves.linear,
                            type: PageTransitionType.bottomToTop,
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
