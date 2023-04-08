import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graz_project/view/screens/Login.dart';
import 'package:graz_project/view/widgets/suggested_card.dart';
import 'package:page_transition/page_transition.dart';

class Letsgo_screen extends StatefulWidget {
  Letsgo_screen({super.key});

  @override
  _Letsgo_screenState createState() => _Letsgo_screenState();
}

class _Letsgo_screenState extends State<Letsgo_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Screenshot 2023-04-08 211116.png'),
              fit: BoxFit.cover,
            ),
          ),

        ),
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.75),
          ),
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.8,
              ),
              Text(
                "7pm Thursday",
                style: GoogleFonts.alata(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 40,
                ),
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
                        "Get a real 'sense' about the people",
                        style: GoogleFonts.alata(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "you're intrested in first",
                        style: GoogleFonts.alata(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 20,
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
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                      curve: Curves.linear,
                      type: PageTransitionType.bottomToTop,
                      child: LoginForm(),
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
                      "Let's Go",
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
        ),
      ]),
    );
  }
}
