import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class massage extends StatefulWidget {
  const massage({Key? key}) : super(key: key);

  @override
  _massage createState() => _massage();
}

class _massage extends State<massage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chats! ',
              textAlign: TextAlign.start,
              style: GoogleFonts.alata(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 50,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Text(
                  'Genral ',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.alata(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'requested ',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.alata(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Divider(
              height: 1.0,
              color: Colors.white24,
            ),
            Container(
              height: 100,
              child: Row(
                children: [
                  InkWell(
              
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white24,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alice ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.alata(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'How are you ! ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.alata(
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Colors.white24,
            ),
            Container(
              height: 100,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white24,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alex ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.alata(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Nice ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.alata(
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Colors.white24,
            ),
            Container(
              height: 100,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white24,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Emy ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.alata(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Lets go ! ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.alata(
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Colors.white24,
            ),
          ],
        ),
      ),
    );
  }
}
