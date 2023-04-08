import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graz_project/controllers/auth_controller.dart';
import 'package:graz_project/controllers/user_data_controller.dart';
import 'package:graz_project/view/screens/Login.dart';
import 'package:graz_project/view/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';

class tag_screen extends StatefulWidget {
  tag_screen({super.key});

  @override
  _tag_screenState createState() => _tag_screenState();
}

class _tag_screenState extends State<tag_screen> {


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
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagChip(tag: "College"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Music"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Dance"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagChip(tag: "Travel"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Smoker"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Tattoo"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Cricket"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagChip(tag: "Food"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Dog"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Drinks"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagChip(tag: "Gamer"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Movies"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Workout"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Kpop"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagChip(tag: "Comedy"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Cosplay"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Anime"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TagChip(tag: "Gamer"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Movies"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Workout"),
                        const SizedBox(width: 10),
                        TagChip(tag: "Kpop"),
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    InkWell(
                      onTap: () {

                        AuthController().createNewUser(UserDataController.userData.value.email, UserDataController.mainPassword, context);
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
                            "Submit",
                            style: GoogleFonts.alata(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40)
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

class TagChip extends StatefulWidget {
  TagChip({super.key, required this.tag});

  String tag;

  @override
  State<TagChip> createState() => _TagChipState();
}

class _TagChipState extends State<TagChip> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) UserDataController().removeTagList(widget.tag);
          if (!isSelected) UserDataController().addToTagList(widget.tag);
          isSelected = !isSelected;
          print(UserDataController.userData.value.tags);
        });
      },
      child: Container(
        height: 50,
        width: 80,
        decoration: BoxDecoration(
          color: isSelected ? Colors.pink : Colors.white24,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            widget.tag,
            style: GoogleFonts.alata(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
