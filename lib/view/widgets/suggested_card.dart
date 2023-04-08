import 'package:flutter/material.dart';
import 'package:graz_project/models/user_model.dart';
import 'package:video_viewer/video_viewer.dart';

class SuggestedCard extends StatelessWidget {
  SuggestedCard({super.key, this.userInfo});

  final User? userInfo;

  final VideoViewerController controller = VideoViewerController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: VideoViewer(
        autoPlay: true,
        looping: true,

        // defaultAspectRatio: ,
        controller: controller,
        source: {
          "SubRip Text": VideoSource(
            video: VideoPlayerController.network(
               /* "https://assets.mixkit.co/videos/preview/mixkit-girl-in-neon-sign-1232-large.mp4"*/
              /*"https://assets.mixkit.co/videos/preview/mixkit-blogging-girl-down-the-street-with-his-cell-34487-large.mp4"*/
              /*"https://assets.mixkit.co/videos/preview/mixkit-girl-gently-skating-in-a-parking-lot-34548-large.mp4"*/
              "https://assets.mixkit.co/videos/preview/mixkit-blogging-girl-down-the-street-with-his-cell-34487-large.mp4"
            ),
          )
        },
      ),
    );
  }
}
