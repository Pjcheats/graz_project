import 'package:flutter/cupertino.dart';
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
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.black,
        ),
        child: VideoViewer(
          autoPlay: true,
          looping: true,
          enableFullscreenScale: true,
          // defaultAspectRatio: ,
          controller: controller,
          source: {
            "SubRip Text": VideoSource(
              video: VideoPlayerController.network(
                  "https://assets.mixkit.co/videos/preview/mixkit-portrait-of-a-fashion-woman-with-silver-makeup-39875-large.mp4"),
            )
          },
        ),
      ),
    );
  }
}
