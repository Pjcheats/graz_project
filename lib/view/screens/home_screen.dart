import 'package:flutter/material.dart';
import 'package:graz_project/view/widgets/suggested_card.dart';

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
        onHorizontalDragEnd: (details) {
          if (details.velocity.pixelsPerSecond.dx > 0) {
            // Swipe right
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Right Swipe'),
                  content: Text('You swiped right.'),
                );
              },
            );
          } else {
            // Swipe left
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Left Swipe'),
                  content: Text('You swiped left.'),
                );
              },
            );
          }
        },
        child: Column(
          children: [
            Container(
              height: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black,
              ),
              child: Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  child: PageView(
                    controller: _controller,
                    scrollDirection: Axis.vertical,
                    children: [
                      SuggestedCard(),
                      SuggestedCard(),
                      SuggestedCard(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

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
      ),
    );
  }
}

class VideoPlayerPage extends StatelessWidget {
  final String videoUrl;

  VideoPlayerPage({required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Video player goes here'),
      ),
    );
  }
}
