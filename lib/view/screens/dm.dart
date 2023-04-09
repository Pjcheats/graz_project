
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/colors.dart';

class dm extends StatefulWidget {
  const dm({Key? key}) : super(key: key);

  @override
  _dm createState() => _dm();
}

class _dm extends State<dm> {


  
  TextEditingController _dmController = TextEditingController();
  Map<String, bool> _messageList = {};
  int _messageIndex = 0;

  final _messages = [

    "Hey! Wanna go out ??",
    "is Caster's Cafe Alright ?",
    "Ok, Monday at 4 "
  ];

  List<Widget> _getMessageTab() {
    List<Widget> _list = [];
    _messageList.forEach((key, value) {
      _list.add(messageCard(key, value));
    });
    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                  height: 450.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            "What would she like ? ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        ItemCard(
                            "Black Shirt",
                            "https://m.media-amazon.com/images/I/41Aemtzsa3L._UX569_.jpg",
                           "https://blog.logrocket.com/launching-urls-flutter-url_launcher/",
                           // "https://www.amazon.in/OTUS-Cotton-Casual-Solid-XX-Large/dp/B09WKZ2GT2/ref=sr_1_7?keywords=black%2Bshirt&sr=8-7&th=1&psc=1")
                        ),
                        SizedBox(height: 10,),
                        ItemCard(
                            "Perfume",
                            "https://m.media-amazon.com/images/I/31KEFAGHrrL._SX300_SY300_QL70_FMwebp_.jpg",
                           "https://blog.logrocket.com/launching-urls-flutter-url_launcher/",
                           // "https://www.amazon.in/OTUS-Cotton-Casual-Solid-XX-Large/dp/B09WKZ2GT2/ref=sr_1_7?keywords=black%2Bshirt&sr=8-7&th=1&psc=1")
                        ),
                        SizedBox(height: 10,),
                        ItemCard(
                            "Flowers",
                            "https://m.media-amazon.com/images/I/610LftTfKdL._SY879_.jpg",
                           "https://blog.logrocket.com/launching-urls-flutter-url_launcher/",
                           // "https://www.amazon.in/OTUS-Cotton-Casual-Solid-XX-Large/dp/B09WKZ2GT2/ref=sr_1_7?keywords=black%2Bshirt&sr=8-7&th=1&psc=1")
                        ),
                        SizedBox(height: 10,),
                        ItemCard(
                            "Watch",
                            "https://m.media-amazon.com/images/I/516LwvihgML._UY679_.jpg",
                           "https://blog.logrocket.com/launching-urls-flutter-url_launcher/",
                           // "https://www.amazon.in/OTUS-Cotton-Casual-Solid-XX-Large/dp/B09WKZ2GT2/ref=sr_1_7?keywords=black%2Bshirt&sr=8-7&th=1&psc=1")
                        ),
                        ]),
                    ),
                  )));
            },
          );
        },
        child: Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.pink,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Icon(Icons.shopping_bag, color: Colors.white),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Alice',
              textAlign: TextAlign.center,
              style: GoogleFonts.alata(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            Expanded(
              child:_getMessageTab().isEmpty ? 
              Center(
                child: Text("No messages",
                style: TextStyle(
                  fontSize: 20,
                  
                  color: Colors.white24
                ),),
              )
              : ListView(
                children: [..._getMessageTab()],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 1.35,
                  decoration: BoxDecoration(
                    color: boxcolor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      style: GoogleFonts.alata(
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      controller: _dmController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Message',
                        labelStyle: TextStyle(color: Colors.white),
                        focusColor: Colors.white,
                        border: InputBorder.none,
                      ),
                     
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _messageList.addAll({_dmController.text.trim(): true});
                    Future.delayed(
                      Duration(seconds: 3),
                      () {
                        _messageList.addAll({_messages[_messageIndex]: false});
                        _messageIndex++;
                        setState(() {
                           
                        });
                      },
                    );
                    _dmController.clear();
                    setState(() {});
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.pink),
                    child: Icon(
                      Icons.send,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget messageCard(String message, bool send) => Row(
        mainAxisAlignment:
            send ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(send ? 0 : 20),
                topLeft: Radius.circular(!send ? 0 : 20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: send ? Colors.white24 : Colors.pink,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.alata(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      );

  Widget ItemCard(String title, String imgUrl, String shopUrl) => InkWell(
      onTap: () async {
        var url = Uri.parse(shopUrl);
        try{
          if (await canLaunchUrl(url)) {
            await launchUrl(url,
            mode: LaunchMode.externalApplication
            );
          } else {
            throw 'Could not launch $url';
          }
        }catch (e){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Could not launch $url'),
            ),
          );
        }

      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white24, borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imgUrl,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.alata(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "View on Amazon",
                  style: GoogleFonts.alata(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                ),
              ],
            )
          ],
        ),
      ));
}
