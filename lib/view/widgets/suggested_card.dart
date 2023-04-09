import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graz_project/models/suggestion_model.dart';
import 'package:video_viewer/video_viewer.dart';

class SuggestedCard extends StatelessWidget {
  SuggestedCard({
    super.key,
    required this.info,
  });
  Suggestion info;

  @override
  void dispose() {
    // TODO: implement dispose
  }

  final VideoViewerController controller = VideoViewerController();

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onTap: () {},
        child: VideoViewer(
          autoPlay: true,
          looping: true,
          controller: controller,
          enableHorizontalSwapingGesture: false,
          enableVerticalSwapingGesture: false,
          enableShowReplayIconAtVideoEnd: false,
          enableChat: false,
          enableFullscreenScale: false,
          onFullscreenFixLandscape: false,
          
          source: {
            "SubRip Text": VideoSource(
              video: VideoPlayerController.network(
                info.videoUrl
                  // /* "https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4"*/
                  // /*"https://assets.mixkit.co/videos/preview/mixkit-blogging-girl-down-the-street-with-his-cell-34487-large.mp4"*/
                  // "https://assets.mixkit.co/videos/preview/mixkit-girl-gently-skating-in-a-parking-lot-34548-large.mp4"
                  // /*"https://assets.mixkit.co/videos/preview/mixkit-a-woman-walking-on-the-beach-on-a-sunny-day-1208-large.mp4*"*/
                  ),
            )
          },
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 600,
                ),
                Row(
                  children: [
                    Text(
                      "${info.name}, ",
                      style: GoogleFonts.alata(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                    Text(
                      info.age.toString(),
                      style: GoogleFonts.alata(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.ac_unit_rounded,
                      color: Colors.white24,
                    ),
                    Text(
                      ' ${info.sign}',
                      style: GoogleFonts.alata(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
