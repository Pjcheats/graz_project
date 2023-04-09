import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:graz_project/models/suggestion_model.dart';
import 'package:graz_project/utils/dialog_util.dart';
import 'package:graz_project/view/screens/lets_go.dart';

import 'package:graz_project/view/widgets/suggested_card.dart';
import 'package:page_transition/page_transition.dart';

import 'dm.dart';

class HomePage extends StatefulWidget {
  // final List<String> videoUrls;
  // VideoPageView({required this.videoUrls});

  HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                ),
                child: Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: PageView.builder(
                      itemCount: mockSuggetionList.length,
                      itemBuilder: (context, index) =>
                          SuggestedCard(info: mockSuggetionList[index]),
                      controller: _controller,
                      scrollDirection: Axis.vertical,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white24),
                    child: Center(
                        child: Icon(
                      Icons.cancel,
                      color: Colors.white,
                      size: 30,
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      DialogUtil().showLikePopUp();
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.pink),
                      child: Center(
                          child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 30,
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (_) => Letsgo_screen()),
                        (route) => false);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white24),
                    child: Center(
                        child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 20,
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: dm(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white24),
                    child: Center(
                        child: Icon(
                      Icons.chat_bubble,
                      color: Colors.white,
                      size: 20,
                    )),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );

    /* PageView.builder(
          itemCount: /*widget.videoUrls.length*/ 4,
          itemBuilder: (context, index) {
            return Center(
              child: GestureDetector(
                onTap: () {
                  // Open new window when video is tapped
                  // Navigator.of(context).push(MaterialPageRoute(
                  //  builder: (context) => VideoPlayerPage(videoUrl: videoUrl)));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    // image: DecorationImage(
                    // image: NetworkImage(videoUrl),
                    //  fit: BoxFit.cover,
                    //),
                  ),
                ),
              ),
            );
          },
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          controller: PageController(
            initialPage: _currentIndex,
          ),
        ),*/
  }
}
