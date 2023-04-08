import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graz_project/controllers/user_data_controller.dart';
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

  int _currentIndex = -1;

  final zodiacList = ["Aries","Aquarius","Cancer","Capricorn","Gemini","Leo","Libra","Pisces","Sagittarius","Scorpius","Taurus","Virgo"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
                      onTap: () {
                        UserDataController().setZodiacSign(zodiacList[_currentIndex - 1]);
                        Navigator.pushReplacement(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: tag_screen(),
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
              Column(
                children: [
                  Text(
                    "Your Zodiac Sign ?",
                    style: GoogleFonts.alata(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ZodiacCard("Aries", 1),
                        ZodiacCard("Aquarius",2 ),
                      ]),
                      const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ZodiacCard("Cancer", 3),
                        ZodiacCard("Capricorn",4 ),
                      ]),const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ZodiacCard("Gemini", 5),
                        ZodiacCard("Leo",6 ),
                      ]),const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ZodiacCard("Libra", 7),
                        ZodiacCard("Pisces",8 ),
                      ]),const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ZodiacCard("Sagittarius", 9),
                        ZodiacCard("Scorpius",10 ),
                      ]),const SizedBox(height: 20),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ZodiacCard("Taurus", 11),
                        ZodiacCard("Virgo",12 ),
                      ]),
                    
                    SizedBox(
                      height: 80,
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
  Widget ZodiacCard(String label, int index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                          child: Container(
                            height: 160,
                            width: 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/zodiac/${label.toLowerCase()}.png',
                                    color:  _currentIndex == index
                                        ? Colors.pink
                                        : Colors.white24,
                                        height: 120,
                                        width: 90,
                                  ),
                                  Text(
                                    label,
                                    style: GoogleFonts.alata(
                                      fontWeight: FontWeight.w400,
                                      color:  _currentIndex == index
                                          ? Colors.pink
                                          : Colors.white24,
                                      fontSize: 25,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ); 
}